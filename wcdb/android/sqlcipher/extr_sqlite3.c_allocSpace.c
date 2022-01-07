
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ReusableSpace {void* pSpace; int nFree; int nNeeded; } ;


 int EIGHT_BYTE_ALIGNMENT (void*) ;
 int ROUND8 (int) ;
 int assert (int ) ;

__attribute__((used)) static void *allocSpace(
  struct ReusableSpace *p,
  void *pBuf,
  int nByte
){
  assert( EIGHT_BYTE_ALIGNMENT(p->pSpace) );
  if( pBuf==0 ){
    nByte = ROUND8(nByte);
    if( nByte <= p->nFree ){
      p->nFree -= nByte;
      pBuf = &p->pSpace[p->nFree];
    }else{
      p->nNeeded += nByte;
    }
  }
  assert( EIGHT_BYTE_ALIGNMENT(pBuf) );
  return pBuf;
}
