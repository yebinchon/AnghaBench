
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config {int dot; TYPE_1__* rp; struct config* bp; } ;
struct TYPE_2__ {int index; } ;



int statecmp(struct config *a, struct config *b)
{
  int rc;
  for(rc=0; rc==0 && a && b; a=a->bp, b=b->bp){
    rc = a->rp->index - b->rp->index;
    if( rc==0 ) rc = a->dot - b->dot;
  }
  if( rc==0 ){
    if( a ) rc = 1;
    if( b ) rc = -1;
  }
  return rc;
}
