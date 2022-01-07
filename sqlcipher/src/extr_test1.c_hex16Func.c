
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zBuf ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_TRANSIENT ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_snprintf (int,char*,char*,unsigned short const) ;
 unsigned short* sqlite3_value_text16 (int *) ;

__attribute__((used)) static void hex16Func(sqlite3_context *p, int argc, sqlite3_value **argv){
  const unsigned short int *z;
  int i;
  char zBuf[400];
  z = sqlite3_value_text16(argv[0]);
  for(i=0; i<sizeof(zBuf)/4 - 4 && z[i]; i++){
    sqlite3_snprintf(sizeof(zBuf)-i*4, &zBuf[i*4],"%04x", z[i]&0xff);
  }
  zBuf[i*4] = 0;
  sqlite3_result_text(p, (char*)zBuf, -1, SQLITE_TRANSIENT);
}
