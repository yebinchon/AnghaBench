
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int adns_state ;
typedef int adns_query ;
struct TYPE_4__ {char** str; } ;
struct TYPE_5__ {scalar_t__ status; TYPE_1__ rrs; } ;
typedef TYPE_2__ adns_answer ;


 int aargh (char*) ;
 int adns_finish (int ) ;
 int adns_if_debug ;
 scalar_t__ adns_init (int *,int ,int ) ;
 int adns_qf_cname_loose ;
 int adns_qf_quoteok_cname ;
 int adns_r_ptr ;
 scalar_t__ adns_s_ok ;
 scalar_t__ adns_submit (int ,char*,int ,int,int *,int *) ;
 scalar_t__ adns_wait (int ,int *,TYPE_2__**,int *) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,char*) ;
 char* progname ;
 int stderr ;
 char* strrchr (char*,char) ;

int main(int argc, char *argv[]) {
  adns_state adns;
  adns_query query;
  adns_answer *answer;

  progname= strrchr(*argv, '/');
  if (progname)
    progname++;
  else
    progname= *argv;

  if (argc != 2) {
    fprintf(stderr, "usage: %s <domain>\n", progname);
    exit(1);
  }

  errno= adns_init(&adns, adns_if_debug, 0);
  if (errno) aargh("adns_init");

  errno= adns_submit(adns, argv[1], adns_r_ptr,
       adns_qf_quoteok_cname|adns_qf_cname_loose,
       ((void*)0), &query);
  if (errno) aargh("adns_submit");

  errno= adns_wait(adns, &query, &answer, ((void*)0));
  if (errno) aargh("adns_init");

  printf("%s\n", answer->status == adns_s_ok ? *answer->rrs.str : "dunno");

  adns_finish(adns);

  return 0;
}
