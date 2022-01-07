
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ShmHeader ;


 int assert (int) ;
 int * testMalloc (int) ;
 char* testMallocPrintf (char*,char const*) ;
 int testReadFile (char*,int ,void*,int,int*) ;

__attribute__((used)) static ShmHeader *getShmHeader(const char *zDb){
  int rc = 0;
  char *zShm = testMallocPrintf("%s-shm", zDb);
  ShmHeader *pHdr;

  pHdr = testMalloc(sizeof(ShmHeader));
  testReadFile(zShm, 0, (void *)pHdr, sizeof(ShmHeader), &rc);
  assert( rc==0 );

  return pHdr;
}
