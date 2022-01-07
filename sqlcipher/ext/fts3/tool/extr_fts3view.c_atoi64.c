
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;



__attribute__((used)) static sqlite3_int64 atoi64(const char *z){
  sqlite3_int64 v = 0;
  while( z[0]>='0' && z[0]<='9' ){
     v = v*10 + z[0] - '0';
     z++;
  }
  return v;
}
