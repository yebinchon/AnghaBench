
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 int assert (int) ;
 int memcpy (char*,char const*,size_t) ;
 char* sqlite3_malloc64 (int) ;
 int strlen (char const*) ;

__attribute__((used)) static char *closureDequote(const char *zIn){
  sqlite3_int64 nIn;
  char *zOut;

  nIn = strlen(zIn);
  zOut = sqlite3_malloc64(nIn+1);
  if( zOut ){
    char q = zIn[0];

    if( q!='[' && q!= '\'' && q!='"' && q!='`' ){
      memcpy(zOut, zIn, (size_t)(nIn+1));
    }else{
      int iOut = 0;
      int iIn;

      if( q=='[' ) q = ']';
      for(iIn=1; iIn<nIn; iIn++){
        if( zIn[iIn]==q ) iIn++;
        zOut[iOut++] = zIn[iIn];
      }
    }
    assert( (int)strlen(zOut)<=nIn );
  }
  return zOut;
}
