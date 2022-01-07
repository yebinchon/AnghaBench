
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pDoclist; } ;
struct TYPE_6__ {scalar_t__ iType; } ;
typedef TYPE_2__ DocListReader ;


 scalar_t__ DL_POSITIONS ;
 int readDocid (TYPE_2__*) ;
 int skipPositionList (TYPE_2__*) ;

__attribute__((used)) static void skipDocument(DocListReader *pReader){
  readDocid(pReader);
  if( pReader->pDoclist->iType >= DL_POSITIONS ){
    skipPositionList(pReader);
  }
}
