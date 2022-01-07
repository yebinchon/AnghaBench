
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LsmPgno ;
typedef int FileSystem ;


 int fsLastPageOnBlock (int *,int ) ;
 int fsPageToBlock (int *,int ) ;

LsmPgno fsLastPageOnPagesBlock(FileSystem *pFS, LsmPgno iPg){
  return fsLastPageOnBlock(pFS, fsPageToBlock(pFS, iPg));
}
