
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;


 int SQLITE_OK ;
 int UNUSED_PARAMETER2 (int *,int) ;

__attribute__((used)) static int memjrnlSync(sqlite3_file *pJfd, int flags){
  UNUSED_PARAMETER2(pJfd, flags);
  return SQLITE_OK;
}
