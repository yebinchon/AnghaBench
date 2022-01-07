
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ keepSizeAfter; scalar_t__ streamPos; scalar_t__ pos; scalar_t__ streamEndWasReached; } ;
typedef TYPE_1__ CMatchFinder ;


 int MatchFinder_ReadBlock (TYPE_1__*) ;

void MatchFinder_ReadIfRequired(CMatchFinder *p)
{
  if (p->streamEndWasReached)
    return;
  if (p->keepSizeAfter >= p->streamPos - p->pos)
    MatchFinder_ReadBlock(p);
}
