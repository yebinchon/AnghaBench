
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fulltext_vtab ;
struct TYPE_6__ {int nData; } ;
struct TYPE_5__ {TYPE_4__ data; } ;
typedef TYPE_1__ LeafWriter ;


 int SQLITE_OK ;
 int dataBufferReset (TYPE_4__*) ;
 int leafWriterInternalFlush (int *,TYPE_1__*,int ,int ) ;

__attribute__((used)) static int leafWriterFlush(fulltext_vtab *v, LeafWriter *pWriter){
  int rc = leafWriterInternalFlush(v, pWriter, 0, pWriter->data.nData);
  if( rc!=SQLITE_OK ) return rc;


  dataBufferReset(&pWriter->data);

  return SQLITE_OK;
}
