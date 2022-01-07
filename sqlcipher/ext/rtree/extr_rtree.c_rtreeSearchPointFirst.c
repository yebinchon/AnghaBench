
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * aPoint; scalar_t__ nPoint; int sPoint; scalar_t__ bPoint; } ;
typedef int RtreeSearchPoint ;
typedef TYPE_1__ RtreeCursor ;



__attribute__((used)) static RtreeSearchPoint *rtreeSearchPointFirst(RtreeCursor *pCur){
  return pCur->bPoint ? &pCur->sPoint : pCur->nPoint ? pCur->aPoint : 0;
}
