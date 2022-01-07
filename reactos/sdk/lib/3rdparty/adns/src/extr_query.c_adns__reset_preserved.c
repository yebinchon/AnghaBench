
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* adns_query ;
struct TYPE_8__ {int preserved_allocd; int interim_allocd; TYPE_2__* answer; int final_allocspace; } ;
struct TYPE_6__ {scalar_t__ untyped; } ;
struct TYPE_7__ {TYPE_1__ rrs; scalar_t__ nrrs; } ;


 int assert (int) ;
 int cancel_children (TYPE_3__*) ;

void adns__reset_preserved(adns_query qu) {
  assert(!qu->final_allocspace);
  cancel_children(qu);
  qu->answer->nrrs= 0;
  qu->answer->rrs.untyped= 0;
  qu->interim_allocd= qu->preserved_allocd;
}
