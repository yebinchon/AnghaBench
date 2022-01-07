
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int fulltext_vtab ;
struct TYPE_11__ {int nData; int pData; } ;
struct TYPE_10__ {int nData; char* pData; } ;
struct TYPE_13__ {TYPE_2__ term; TYPE_1__ data; struct TYPE_13__* next; } ;
struct TYPE_12__ {struct TYPE_12__* parentWriter; scalar_t__ iHeight; TYPE_4__* last; TYPE_4__* first; } ;
typedef TYPE_3__ InteriorWriter ;
typedef TYPE_4__ InteriorBlock ;


 int ASSERT_VALID_INTERIOR_BLOCK (TYPE_4__*) ;
 int ROOT_MAX ;
 int SQLITE_OK ;
 int block_insert (int *,char*,int,int *) ;
 int interiorWriterAppend (TYPE_3__*,int ,int ,int ) ;
 int interiorWriterInit (scalar_t__,int ,int ,int ,TYPE_3__*) ;
 TYPE_3__* sqlite3_malloc (int) ;

__attribute__((used)) static int interiorWriterRootInfo(fulltext_vtab *v, InteriorWriter *pWriter,
                                  char **ppRootInfo, int *pnRootInfo,
                                  sqlite_int64 *piEndBlockid){
  InteriorBlock *block = pWriter->first;
  sqlite_int64 iBlockid = 0;
  int rc;


  if( block==pWriter->last && block->data.nData<ROOT_MAX ){
    *ppRootInfo = block->data.pData;
    *pnRootInfo = block->data.nData;
    return SQLITE_OK;
  }




  ASSERT_VALID_INTERIOR_BLOCK(block);
  rc = block_insert(v, block->data.pData, block->data.nData, &iBlockid);
  if( rc!=SQLITE_OK ) return rc;
  *piEndBlockid = iBlockid;

  pWriter->parentWriter = sqlite3_malloc(sizeof(*pWriter->parentWriter));
  interiorWriterInit(pWriter->iHeight+1,
                     block->term.pData, block->term.nData,
                     iBlockid, pWriter->parentWriter);




  for(block=block->next; block!=((void*)0); block=block->next){
    ASSERT_VALID_INTERIOR_BLOCK(block);
    rc = block_insert(v, block->data.pData, block->data.nData, &iBlockid);
    if( rc!=SQLITE_OK ) return rc;
    *piEndBlockid = iBlockid;

    interiorWriterAppend(pWriter->parentWriter,
                         block->term.pData, block->term.nData, iBlockid);
  }


  return interiorWriterRootInfo(v, pWriter->parentWriter,
                                ppRootInfo, pnRootInfo, piEndBlockid);
}
