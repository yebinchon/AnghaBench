
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FileSystem ;


 int LSM_MIN (int,int) ;
 int lsmFsPageSize (int *) ;

__attribute__((used)) static int keyszToSkip(FileSystem *pFS, int nKey){
  int nPgsz;
  nPgsz = lsmFsPageSize(pFS);
  return LSM_MIN(((nKey * 4) / nPgsz), 3);
}
