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
typedef  scalar_t__ sqlite3_int64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
#define  TK_ERROR 132 
#define  TK_LITERAL 131 
#define  TK_NAME 130 
#define  TK_PUNCT 129 
#define  TK_SPACE 128 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (unsigned char*,int*) ; 
 char FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (scalar_t__) ; 
 char* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 char* FUNC11 (char*,char*) ; 

char *FUNC12(const char *zSql){
  char *z;              /* The output string */
  sqlite3_int64 nZ;     /* Size of the output string in bytes */
  sqlite3_int64 nSql;   /* Size of the input string in bytes */
  int i;                /* Next character to read from zSql[] */
  int j;                /* Next slot to fill in on z[] */
  int tokenType;        /* Type of the next token */
  int n;                /* Size of the next token */
  int k;                /* Loop counter */

  nSql = FUNC9(zSql);
  nZ = nSql;
  z = FUNC6( nZ+2 );
  if( z==0 ) return 0;
  for(i=j=0; zSql[i]; i += n){
    n = FUNC3((unsigned char*)zSql+i, &tokenType);
    switch( tokenType ){
      case TK_SPACE: {
        break;
      }
      case TK_ERROR: {
        FUNC5(z);
        return 0;
      }
      case TK_LITERAL: {
        z[j++] = '?';
        break;
      }
      case TK_PUNCT:
      case TK_NAME: {
        if( n==4 && FUNC8(zSql+i,"NULL",4)==0 ){
          if( (j>=3 && FUNC10(z+j-2,"is",2)==0 && !FUNC0(z[j-3]))
           || (j>=4 && FUNC10(z+j-3,"not",3)==0 && !FUNC0(z[j-4]))
          ){
            /* NULL is a keyword in this case, not a literal value */
          }else{
            /* Here the NULL is a literal value */
            z[j++] = '?';
            break;
          }
        }
        if( j>0 && FUNC0(z[j-1]) && FUNC0(zSql[i]) ) z[j++] = ' ';
        for(k=0; k<n; k++){
          z[j++] = FUNC4(zSql[i+k]);
        }
        break;
      }
    }
  }
  while( j>0 && z[j-1]==' ' ){ j--; }
  if( j>0 && z[j-1]!=';' ){ z[j++] = ';'; }
  z[j] = 0;

  /* Make a second pass converting "in(...)" where the "..." is not a
  ** SELECT statement into "in(?,?,?)" */
  for(i=0; i<j; i=n){
    char *zIn = FUNC11(z+i, "in(");
    int nParen;
    if( zIn==0 ) break;
    n = (int)(zIn-z)+3;  /* Index of first char past "in(" */
    if( n && FUNC0(zIn[-1]) ) continue;
    if( FUNC10(zIn, "in(select",9)==0 && !FUNC0(zIn[9]) ) continue;
    if( FUNC10(zIn, "in(with",7)==0 && !FUNC0(zIn[7]) ) continue;
    for(nParen=1, k=0; z[n+k]; k++){
      if( z[n+k]=='(' ) nParen++;
      if( z[n+k]==')' ){
        nParen--;
        if( nParen==0 ) break;
      }
    }
    /* k is the number of bytes in the "..." within "in(...)" */
    if( k<5 ){
      z = FUNC7(z, j+(5-k)+1);
      if( z==0 ) return 0;
      FUNC2(z+n+5, z+n+k, j-(n+k));
    }else if( k>5 ){
      FUNC2(z+n+5, z+n+k, j-(n+k));
    }
    j = j-k+5;
    z[j] = 0;
    FUNC1(z+n, "?,?,?", 5);
  }
  return z;
}