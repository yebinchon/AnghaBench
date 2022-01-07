
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Segment ;
typedef int Page ;
typedef int LsmPgno ;
typedef int FileSystem ;


 int fsPageGet (int *,int *,int ,int ,int **,int ) ;

int lsmFsDbPageGet(FileSystem *pFS, Segment *pSeg, LsmPgno iPg, Page **ppPg){
  return fsPageGet(pFS, pSeg, iPg, 0, ppPg, 0);
}
