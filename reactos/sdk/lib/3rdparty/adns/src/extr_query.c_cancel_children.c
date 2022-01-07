
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* adns_query ;
struct TYPE_7__ {TYPE_3__* next; } ;
struct TYPE_6__ {TYPE_3__* head; } ;
struct TYPE_8__ {TYPE_2__ siblings; TYPE_1__ children; } ;


 int adns_cancel (TYPE_3__*) ;

__attribute__((used)) static void cancel_children(adns_query qu) {
  adns_query cqu, ncqu;

  for (cqu= qu->children.head; cqu; cqu= ncqu) {
    ncqu= cqu->siblings.next;
    adns_cancel(cqu);
  }
}
