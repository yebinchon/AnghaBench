
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ show_cname; } ;
struct query_node {TYPE_1__ pqfr; } ;
typedef int adns_status ;
struct TYPE_6__ {char* cname; } ;
typedef TYPE_2__ adns_answer ;


 scalar_t__ EOF ;
 char* adns_errabbrev (int) ;
 char* adns_errtypeabbrev (int) ;
 char* adns_strerror (int) ;
 int assert (int) ;
 int outerr () ;
 int print_owner_ttl (struct query_node*,TYPE_2__*) ;
 int print_withspace (char*) ;
 scalar_t__ printf (char*,char const*,...) ;
 int strchr (char const*,char) ;

__attribute__((used)) static void print_status(adns_status st, struct query_node *qun, adns_answer *answer) {
  const char *statustypeabbrev, *statusabbrev, *statusstring;

  statustypeabbrev= adns_errtypeabbrev(st);
  statusabbrev= adns_errabbrev(st);
  statusstring= adns_strerror(st);
  assert(!strchr(statusstring,'"'));

  if (printf("%s %d %s ", statustypeabbrev, st, statusabbrev)
      == EOF) outerr();
  print_owner_ttl(qun,answer);
  if (qun->pqfr.show_cname)
    print_withspace(answer->cname ? answer->cname : "$");
  if (printf("\"%s\"\n", statusstring) == EOF) outerr();
}
