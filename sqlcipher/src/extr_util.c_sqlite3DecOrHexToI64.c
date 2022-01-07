
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int i64 ;


 int SQLITE_UTF8 ;
 int memcpy (int *,int*,int) ;
 int sqlite3Atoi64 (char const*,int *,int ,int ) ;
 int sqlite3HexToInt (char const) ;
 scalar_t__ sqlite3Isxdigit (char const) ;
 int sqlite3Strlen30 (char const*) ;

int sqlite3DecOrHexToI64(const char *z, i64 *pOut){

  if( z[0]=='0'
   && (z[1]=='x' || z[1]=='X')
  ){
    u64 u = 0;
    int i, k;
    for(i=2; z[i]=='0'; i++){}
    for(k=i; sqlite3Isxdigit(z[k]); k++){
      u = u*16 + sqlite3HexToInt(z[k]);
    }
    memcpy(pOut, &u, 8);
    return (z[k]==0 && k-i<=16) ? 0 : 2;
  }else

  {
    return sqlite3Atoi64(z, pOut, sqlite3Strlen30(z), SQLITE_UTF8);
  }
}
