
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int adns_status ;
typedef TYPE_2__* adns_query ;
struct TYPE_7__ {TYPE_1__* answer; } ;
struct TYPE_6__ {int status; } ;


 int adns__query_done (TYPE_2__*) ;
 int adns__reset_preserved (TYPE_2__*) ;

void adns__query_fail(adns_query qu, adns_status stat) {
  adns__reset_preserved(qu);
  qu->answer->status= stat;
  adns__query_done(qu);
}
