
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int printf (char*,...) ;

__attribute__((used)) static void printTreeLine(sqlite3_int64 iLower, sqlite3_int64 iUpper){
  printf("                 tree   %9lld", iLower);
  if( iUpper>iLower ){
    printf(" thru %9lld  (%lld blocks)", iUpper, iUpper-iLower+1);
  }
  printf("\n");
}
