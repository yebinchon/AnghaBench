
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;


 int BLOCKSIZE ;

__attribute__((used)) static int fsSectorSize(sqlite3_file *pFile){
  return BLOCKSIZE;
}
