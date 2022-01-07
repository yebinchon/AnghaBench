
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int fulltext_vtab ;
struct TYPE_5__ {int nData; char* pData; } ;
struct TYPE_6__ {int parentWriter; scalar_t__ iEndBlockid; int has_parent; TYPE_1__ data; } ;
typedef TYPE_2__ LeafWriter ;


 int ROOT_MAX ;
 int SQLITE_OK ;
 int assert (int ) ;
 int interiorWriterRootInfo (int *,int *,char**,int*,scalar_t__*) ;
 int leafWriterFlush (int *,TYPE_2__*) ;

__attribute__((used)) static int leafWriterRootInfo(fulltext_vtab *v, LeafWriter *pWriter,
                              char **ppRootInfo, int *pnRootInfo,
                              sqlite_int64 *piEndBlockid){

  if( !pWriter->has_parent && pWriter->data.nData<ROOT_MAX ){
    *ppRootInfo = pWriter->data.pData;
    *pnRootInfo = pWriter->data.nData;
    *piEndBlockid = 0;
    return SQLITE_OK;
  }


  if( pWriter->data.nData>0 ){
    int rc = leafWriterFlush(v, pWriter);
    if( rc!=SQLITE_OK ) return rc;
  }


  assert( pWriter->has_parent );






  *piEndBlockid = pWriter->iEndBlockid;

  return interiorWriterRootInfo(v, &pWriter->parentWriter,
                                ppRootInfo, pnRootInfo, piEndBlockid);
}
