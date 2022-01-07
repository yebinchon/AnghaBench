
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int fulltext_vtab ;
struct TYPE_4__ {int iEndBlockid; int iStartBlockid; int idx; int iLevel; } ;
typedef TYPE_1__ LeafWriter ;


 int SQLITE_OK ;
 int leafWriterRootInfo (int *,TYPE_1__*,char**,int*,scalar_t__*) ;
 int segdir_set (int *,int ,int ,int ,int ,scalar_t__,char*,int) ;

__attribute__((used)) static int leafWriterFinalize(fulltext_vtab *v, LeafWriter *pWriter){
  sqlite_int64 iEndBlockid;
  char *pRootInfo;
  int rc, nRootInfo;

  rc = leafWriterRootInfo(v, pWriter, &pRootInfo, &nRootInfo, &iEndBlockid);
  if( rc!=SQLITE_OK ) return rc;


  if( iEndBlockid==0 && nRootInfo==0 ) return SQLITE_OK;

  return segdir_set(v, pWriter->iLevel, pWriter->idx,
                    pWriter->iStartBlockid, pWriter->iEndBlockid,
                    iEndBlockid, pRootInfo, nRootInfo);
}
