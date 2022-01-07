
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* v; struct TYPE_5__* pParent; } ;
typedef TYPE_2__ VdbeFrame ;
struct TYPE_4__ {TYPE_2__* pDelFrame; } ;


 int assert (int ) ;
 int sqlite3VdbeFrameIsValid (TYPE_2__*) ;

void sqlite3VdbeFrameMemDel(void *pArg){
  VdbeFrame *pFrame = (VdbeFrame*)pArg;
  assert( sqlite3VdbeFrameIsValid(pFrame) );
  pFrame->pParent = pFrame->v->pDelFrame;
  pFrame->v->pDelFrame = pFrame;
}
