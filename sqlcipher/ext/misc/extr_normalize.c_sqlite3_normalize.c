
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 scalar_t__ IdChar (char const) ;





 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 int sqlite3GetToken (unsigned char*,int*) ;
 char sqlite3Tolower (char const) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (scalar_t__) ;
 char* sqlite3_realloc64 (char*,int) ;
 int sqlite3_strnicmp (char const*,char*,int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;

char *sqlite3_normalize(const char *zSql){
  char *z;
  sqlite3_int64 nZ;
  sqlite3_int64 nSql;
  int i;
  int j;
  int tokenType;
  int n;
  int k;

  nSql = strlen(zSql);
  nZ = nSql;
  z = sqlite3_malloc64( nZ+2 );
  if( z==0 ) return 0;
  for(i=j=0; zSql[i]; i += n){
    n = sqlite3GetToken((unsigned char*)zSql+i, &tokenType);
    switch( tokenType ){
      case 128: {
        break;
      }
      case 132: {
        sqlite3_free(z);
        return 0;
      }
      case 131: {
        z[j++] = '?';
        break;
      }
      case 129:
      case 130: {
        if( n==4 && sqlite3_strnicmp(zSql+i,"NULL",4)==0 ){
          if( (j>=3 && strncmp(z+j-2,"is",2)==0 && !IdChar(z[j-3]))
           || (j>=4 && strncmp(z+j-3,"not",3)==0 && !IdChar(z[j-4]))
          ){

          }else{

            z[j++] = '?';
            break;
          }
        }
        if( j>0 && IdChar(z[j-1]) && IdChar(zSql[i]) ) z[j++] = ' ';
        for(k=0; k<n; k++){
          z[j++] = sqlite3Tolower(zSql[i+k]);
        }
        break;
      }
    }
  }
  while( j>0 && z[j-1]==' ' ){ j--; }
  if( j>0 && z[j-1]!=';' ){ z[j++] = ';'; }
  z[j] = 0;



  for(i=0; i<j; i=n){
    char *zIn = strstr(z+i, "in(");
    int nParen;
    if( zIn==0 ) break;
    n = (int)(zIn-z)+3;
    if( n && IdChar(zIn[-1]) ) continue;
    if( strncmp(zIn, "in(select",9)==0 && !IdChar(zIn[9]) ) continue;
    if( strncmp(zIn, "in(with",7)==0 && !IdChar(zIn[7]) ) continue;
    for(nParen=1, k=0; z[n+k]; k++){
      if( z[n+k]=='(' ) nParen++;
      if( z[n+k]==')' ){
        nParen--;
        if( nParen==0 ) break;
      }
    }

    if( k<5 ){
      z = sqlite3_realloc64(z, j+(5-k)+1);
      if( z==0 ) return 0;
      memmove(z+n+5, z+n+k, j-(n+k));
    }else if( k>5 ){
      memmove(z+n+5, z+n+k, j-(n+k));
    }
    j = j-k+5;
    z[j] = 0;
    memcpy(z+n, "?,?,?", 5);
  }
  return z;
}
