
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long time_t ;
struct TYPE_4__ {int ttl; } ;
struct query_node {TYPE_1__ pqfr; } ;
struct TYPE_5__ {unsigned long expires; } ;
typedef TYPE_2__ adns_answer ;


 scalar_t__ EOF ;
 int abort () ;
 int errno ;
 int outerr () ;
 scalar_t__ printf (char*,unsigned long) ;
 int sysfail (char*,int ) ;
 unsigned long time (unsigned long*) ;




__attribute__((used)) static void print_ttl(struct query_node *qun, adns_answer *answer) {
  unsigned long ttl;
  time_t now;

  switch (qun->pqfr.ttl) {
  case 129:
    return;
  case 128:
    if (time(&now) == (time_t)-1) sysfail("get current time",errno);
    ttl= answer->expires < now ? 0 : answer->expires - now;
    break;
  case 130:
    ttl= answer->expires;
    break;
  default:
    abort();
  }
  if (printf("%lu ",ttl) == EOF) outerr();
}
