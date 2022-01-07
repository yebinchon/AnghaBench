
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
typedef TYPE_1__* adns_query ;
struct TYPE_3__ {scalar_t__ expires; } ;


 unsigned long MAXTTLBELIEVE ;
 int assert (int) ;

void adns__update_expires(adns_query qu, unsigned long ttl, struct timeval now) {
  time_t max;

  assert(ttl <= MAXTTLBELIEVE);
  max= now.tv_sec + ttl;
  if (qu->expires < max) return;
  qu->expires= max;
}
