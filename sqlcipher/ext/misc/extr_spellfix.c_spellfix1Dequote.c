
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALWAYS (char) ;
 scalar_t__ isspace (char) ;
 char* sqlite3_mprintf (char*,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *spellfix1Dequote(const char *zIn){
  char *zOut;
  int i, j;
  char c;
  while( isspace((unsigned char)zIn[0]) ) zIn++;
  zOut = sqlite3_mprintf("%s", zIn);
  if( zOut==0 ) return 0;
  i = (int)strlen(zOut);



  zOut[i] = 0;
  c = zOut[0];
  if( c=='\'' || c=='"' ){
    for(i=1, j=0; ALWAYS(zOut[i]); i++){
      zOut[j++] = zOut[i];
      if( zOut[i]==c ){
        if( zOut[i+1]==c ){
          i++;
        }else{
          zOut[j-1] = 0;
          break;
        }
      }
    }
  }
  return zOut;
}
