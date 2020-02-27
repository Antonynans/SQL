use movie_db;

CREATE TABLE Movie (
	movieId					integer			NOT NULL,
    movieTitle				char(50)		NOT NULL,
    movieYear				integer			NOT NULL,
    movieTime				integer			NULL,
    movieLanguage			char(50)		NOT NULL,
    movieDateReleased		date			NOT NULL,
    movieReleaseCountry		char(5)			NOT NULL,
    CONSTRAINT				movie_PK		PRIMARY KEY(MovieId)
    );
    
CREATE TABLE Actor(
    ActorId				Integer			NOT NULL,
    ActorFirstNmae		char(50)		NOT NULL,
    ActorLastName		char(50)		NOT NULL,
    ActorGender			char(1)			NOT NULL,
    CONSTRAINT 			Actor_pk		PRIMARY KEY(ActorId)
);
    
CREATE TABLE MovieCast (
	ActorId			Integer				NOT NULL,
    MovieId			Integer				NOT NULL,
    Role			char(30)			NOT NULL,
    CONSTRAINT		MovieCast_FK		PRIMARY KEY(MovieId,ActorId),
    CONSTRAINT		Actor_PK			FOREIGN KEY(ActorId)
					REFERENCES			Actor(ActorId),
    CONSTRAINT		Movie_PK			FOREIGN KEY(movieId)
					REFERENCES			Movie(MovieId)
);

CREATE TABLE Director(
	DirectorId			Integer			NOT NULL,
    DirectorFirstName	char(20)		NOt NULL,
    DirectorLastName	char(20)		NOT NULL,
    CONSTRAINT			Director_PK		PRIMARY KEY	(DirectorId)
);

CREATE TABLE MovieDirection (
	DirectorId			Integer					NOT NULL,
    MovieId				Integer					NOT NULL
  /*  CONSTRAINT 		MovieDirection_PK		PRIMARY KEY(DirectiorId, MovieId)*/
);

CREATE TABLE Reviewer (
	ReviewerId			integer 		NOT NULL,
    ReviewerName		char(30)		NOT NULL,
    CONSTRAINT			Reviewer_PK		PRIMARY KEY(ReviewerId)
    );
    
CREATE TABLE Rating (
	MovieId				integer				not null,
    reviewerId			integer				not null,
    reviewerStars		integer				not null,
    Num_O_rating		integer				not null,
    CONSTRAINT			Rating_PK			PRIMARY KEY (MovieId, ReviewerId),
    CONSTRAINT			Movie_FK			FOREIGN KEY	(MovieId)
						REFERENCES			Movie(MovieId),
	CONSTRAINT			Reviewer_FK			FOREIGN KEY (reviewerId)
						REFERENCES			Reviewer(reviewerId)
	);
    
CREATE TABLE  Genres (
	genId			integer				not null,
    genTitle		char(20)			null,
    CONSTRAINT		 genres_PK			PRIMARY KEY	(genId)
    );
	
    

