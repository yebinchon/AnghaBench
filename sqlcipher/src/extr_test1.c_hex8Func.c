
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zBuf ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_TRANSIENT ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_snprintf (int,char*,char*,unsigned char const) ;
 unsigned char* sqlite3_value_text (int *) ;

__attribute__((used)) static void hex8Func(sqlite3_context *p, int argc, sqlite3_value **argv){
  const unsigned char *z;
  int i;
  char zBuf[200];
  z = sqlite3_value_text(argv[0]);
  for(i=0; i<sizeof(zBuf)/2 - 2 && z[i]; i++){
    sqlite3_snprintf(sizeof(zBuf)-i*2, &zBuf[i*2], "%02x", z[i]);
  }
  zBuf[i*2] = 0;
  sqlite3_result_text(p, (char*)zBuf, -1, SQLITE_TRANSIENT);
}
