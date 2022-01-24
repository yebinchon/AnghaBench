#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pstate {char* tokenstart; int tokenlineno; scalar_t__ errorcnt; int /*<<< orphan*/  firstrule; int /*<<< orphan*/  filename; int /*<<< orphan*/  state; struct lemon* gp; } ;
struct lemon {scalar_t__ errorcnt; int /*<<< orphan*/  rule; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  ps ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  INITIALIZE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC6 (char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct pstate*,char,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pstate*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(struct lemon *gp)
{
  struct pstate ps;
  FILE *fp;
  char *filebuf;
  unsigned int filesize;
  int lineno;
  int c;
  char *cp, *nextcp;
  int startline = 0;

  FUNC11(&ps, '\0', sizeof(ps));
  ps.gp = gp;
  ps.filename = gp->filename;
  ps.errorcnt = 0;
  ps.state = INITIALIZE;

  /* Begin by reading the input file */
  fp = FUNC5(ps.filename,"rb");
  if( fp==0 ){
    FUNC0(ps.filename,0,"Can't open this file for reading.");
    gp->errorcnt++;
    return;
  }
  FUNC8(fp,0,2);
  filesize = FUNC9(fp);
  FUNC14(fp);
  filebuf = (char *)FUNC10( filesize+1 );
  if( filesize>100000000 || filebuf==0 ){
    FUNC0(ps.filename,0,"Input file too large.");
    FUNC7(filebuf);
    gp->errorcnt++;
    FUNC4(fp);
    return;
  }
  if( FUNC6(filebuf,1,filesize,fp)!=filesize ){
    FUNC0(ps.filename,0,"Can't read in all %d bytes of this file.",
      filesize);
    FUNC7(filebuf);
    gp->errorcnt++;
    FUNC4(fp);
    return;
  }
  FUNC4(fp);
  filebuf[filesize] = 0;

  /* Make an initial pass through the file to handle %ifdef and %ifndef */
  FUNC13(filebuf);

  /* Now scan the text of the input file */
  lineno = 1;
  for(cp=filebuf; (c= *cp)!=0; ){
    if( c=='\n' ) lineno++;              /* Keep track of the line number */
    if( FUNC3(c) ){ cp++; continue; }  /* Skip all white space */
    if( c=='/' && cp[1]=='/' ){          /* Skip C++ style comments */
      cp+=2;
      while( (c= *cp)!=0 && c!='\n' ) cp++;
      continue;
    }
    if( c=='/' && cp[1]=='*' ){          /* Skip C style comments */
      cp+=2;
      while( (c= *cp)!=0 && (c!='/' || cp[-1]!='*') ){
        if( c=='\n' ) lineno++;
        cp++;
      }
      if( c ) cp++;
      continue;
    }
    ps.tokenstart = cp;                /* Mark the beginning of the token */
    ps.tokenlineno = lineno;           /* Linenumber on which token begins */
    if( c=='\"' ){                     /* String literals */
      cp++;
      while( (c= *cp)!=0 && c!='\"' ){
        if( c=='\n' ) lineno++;
        cp++;
      }
      if( c==0 ){
        FUNC0(ps.filename,startline,
"String starting on this line is not terminated before the end of the file.");
        ps.errorcnt++;
        nextcp = cp;
      }else{
        nextcp = cp+1;
      }
    }else if( c=='{' ){               /* A block of C code */
      int level;
      cp++;
      for(level=1; (c= *cp)!=0 && (level>1 || c!='}'); cp++){
        if( c=='\n' ) lineno++;
        else if( c=='{' ) level++;
        else if( c=='}' ) level--;
        else if( c=='/' && cp[1]=='*' ){  /* Skip comments */
          int prevc;
          cp = &cp[2];
          prevc = 0;
          while( (c= *cp)!=0 && (c!='/' || prevc!='*') ){
            if( c=='\n' ) lineno++;
            prevc = c;
            cp++;
          }
        }else if( c=='/' && cp[1]=='/' ){  /* Skip C++ style comments too */
          cp = &cp[2];
          while( (c= *cp)!=0 && c!='\n' ) cp++;
          if( c ) lineno++;
        }else if( c=='\'' || c=='\"' ){    /* String a character literals */
          int startchar, prevc;
          startchar = c;
          prevc = 0;
          for(cp++; (c= *cp)!=0 && (c!=startchar || prevc=='\\'); cp++){
            if( c=='\n' ) lineno++;
            if( prevc=='\\' ) prevc = 0;
            else              prevc = c;
          }
        }
      }
      if( c==0 ){
        FUNC0(ps.filename,ps.tokenlineno,
"C code starting on this line is not terminated before the end of the file.");
        ps.errorcnt++;
        nextcp = cp;
      }else{
        nextcp = cp+1;
      }
    }else if( FUNC1(c) ){          /* Identifiers */
      while( (c= *cp)!=0 && (FUNC1(c) || c=='_') ) cp++;
      nextcp = cp;
    }else if( c==':' && cp[1]==':' && cp[2]=='=' ){ /* The operator "::=" */
      cp += 3;
      nextcp = cp;
    }else if( (c=='/' || c=='|') && FUNC2(cp[1]) ){
      cp += 2;
      while( (c = *cp)!=0 && (FUNC1(c) || c=='_') ) cp++;
      nextcp = cp;
    }else{                          /* All other (one character) operators */
      cp++;
      nextcp = cp;
    }
    c = *cp;
    *cp = 0;                        /* Null terminate the token */
    FUNC12(&ps);             /* Parse the token */
    *cp = (char)c;                  /* Restore the buffer */
    cp = nextcp;
  }
  FUNC7(filebuf);                    /* Release the buffer after parsing */
  gp->rule = ps.firstrule;
  gp->errorcnt = ps.errorcnt;
}