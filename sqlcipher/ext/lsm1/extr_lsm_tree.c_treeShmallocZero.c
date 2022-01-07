
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lsm_db ;


 int LSM_OK ;
 int assert (int) ;
 int memset (void*,int ,int) ;
 int treeShmalloc (int *,int,int,int*) ;
 void* treeShmptr (int *,int ) ;

__attribute__((used)) static void *treeShmallocZero(lsm_db *pDb, int nByte, u32 *piPtr, int *pRc){
  u32 iPtr;
  void *p;
  iPtr = treeShmalloc(pDb, 1, nByte, pRc);
  p = treeShmptr(pDb, iPtr);
  if( p ){
    assert( *pRc==LSM_OK );
    memset(p, 0, nByte);
    *piPtr = iPtr;
  }
  return p;
}
