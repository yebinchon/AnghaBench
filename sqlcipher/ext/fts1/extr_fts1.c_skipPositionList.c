
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ iType; } ;
struct TYPE_5__ {TYPE_2__* pDoclist; } ;
typedef TYPE_1__ DocListReader ;
typedef TYPE_2__ DocList ;


 scalar_t__ DL_POSITIONS ;
 int readPosition (TYPE_1__*,int*) ;

__attribute__((used)) static void skipPositionList(DocListReader *pReader){
  DocList *p = pReader->pDoclist;
  if( p && p->iType>=DL_POSITIONS ){
    int iColumn;
    while( readPosition(pReader, &iColumn)!=-1 ){}
  }
}
