
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* sqlite_int64 ;
struct TYPE_4__ {int iHeight; int term; int * last; int * first; void* iLastChildBlock; void* iOpeningChildBlock; } ;
typedef TYPE_1__ InteriorWriter ;
typedef int InteriorBlock ;


 int ASSERT_VALID_INTERIOR_BLOCK (int *) ;
 int CLEAR (TYPE_1__*) ;
 int assert (int) ;
 int dataBufferInit (int *,int ) ;
 int * interiorBlockNew (int,void*,char const*,int) ;

__attribute__((used)) static void interiorWriterInit(int iHeight, const char *pTerm, int nTerm,
                               sqlite_int64 iChildBlock,
                               InteriorWriter *pWriter){
  InteriorBlock *block;
  assert( iHeight>0 );
  CLEAR(pWriter);

  pWriter->iHeight = iHeight;
  pWriter->iOpeningChildBlock = iChildBlock;

  pWriter->iLastChildBlock = iChildBlock;

  block = interiorBlockNew(iHeight, iChildBlock, pTerm, nTerm);
  pWriter->last = pWriter->first = block;
  ASSERT_VALID_INTERIOR_BLOCK(pWriter->last);
  dataBufferInit(&pWriter->term, 0);
}
