
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_OK ;
 int printf (char*,char*) ;

__attribute__((used)) static int xCompileOptions(void *pCtx, int nVal, char **azVal, char **azCol){
  printf("-- Compile option: %s\n", azVal[0]);
  return SQLITE_OK;
}
