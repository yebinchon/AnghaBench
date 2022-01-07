
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_11__ {int nData; } ;
struct TYPE_10__ {int nData; char const* pData; } ;
struct TYPE_9__ {TYPE_6__ data; struct TYPE_9__* next; } ;
struct TYPE_8__ {scalar_t__ iLastChildBlock; scalar_t__ iOpeningChildBlock; TYPE_3__* last; TYPE_4__ term; int iHeight; } ;
typedef TYPE_1__ InteriorWriter ;


 int ASSERT_VALID_INTERIOR_BLOCK (TYPE_3__*) ;
 int INTERIOR_MAX ;
 scalar_t__ INTERIOR_MIN_TERMS ;
 int VARINT_MAX ;
 int assert (int) ;
 int dataBufferAppend2 (TYPE_6__*,char*,int,char const*,int) ;
 int dataBufferReplace (TYPE_4__*,char const*,int) ;
 int dataBufferReset (TYPE_4__*) ;
 TYPE_3__* interiorBlockNew (int ,scalar_t__,char const*,int) ;
 int putVarint (char*,int) ;

__attribute__((used)) static void interiorWriterAppend(InteriorWriter *pWriter,
                                 const char *pTerm, int nTerm,
                                 sqlite_int64 iChildBlock){
  char c[VARINT_MAX+VARINT_MAX];
  int n, nPrefix = 0;

  ASSERT_VALID_INTERIOR_BLOCK(pWriter->last);







  if( pWriter->term.nData==0 ){
    n = putVarint(c, nTerm);
  }else{
    while( nPrefix<pWriter->term.nData &&
           pTerm[nPrefix]==pWriter->term.pData[nPrefix] ){
      nPrefix++;
    }

    n = putVarint(c, nPrefix);
    n += putVarint(c+n, nTerm-nPrefix);
  }


  pWriter->iLastChildBlock++;

  assert( pWriter->iLastChildBlock==iChildBlock );




  if( pWriter->last->data.nData+n+nTerm-nPrefix>INTERIOR_MAX &&
      iChildBlock-pWriter->iOpeningChildBlock>INTERIOR_MIN_TERMS ){
    pWriter->last->next = interiorBlockNew(pWriter->iHeight, iChildBlock,
                                           pTerm, nTerm);
    pWriter->last = pWriter->last->next;
    pWriter->iOpeningChildBlock = iChildBlock;
    dataBufferReset(&pWriter->term);
  }else{
    dataBufferAppend2(&pWriter->last->data, c, n,
                      pTerm+nPrefix, nTerm-nPrefix);
    dataBufferReplace(&pWriter->term, pTerm, nTerm);
  }
  ASSERT_VALID_INTERIOR_BLOCK(pWriter->last);
}
