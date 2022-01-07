
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;


 int UNUSED_PARAMETER (int *) ;

__attribute__((used)) static int asyncSectorSize(sqlite3_file *pFile){
  UNUSED_PARAMETER(pFile);
  return 512;
}
