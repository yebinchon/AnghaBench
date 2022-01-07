
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct query_node {int dummy; } ;
typedef scalar_t__ adns_status ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ adns_answer ;


 int EOF ;
 scalar_t__ adns_rr_info (int ,char const**,int ,int ,int ,int ) ;
 scalar_t__ adns_s_nodata ;
 scalar_t__ adns_s_nxdomain ;
 char* adns_strerror (scalar_t__) ;
 int assert (int) ;
 int errno ;
 scalar_t__ fmt_inline ;
 scalar_t__ fmt_simple ;
 int fprintf (int ,char*,char const*,...) ;
 int fputs (char*,int ) ;
 int outerr () ;
 scalar_t__ ov_format ;
 char* owner_show (struct query_node*,TYPE_1__*) ;
 int print_status (scalar_t__,struct query_node*,TYPE_1__*) ;
 int stderr ;
 int stdout ;
 int sysfail (char*,int ) ;

__attribute__((used)) static void print_dnsfail(adns_status st, struct query_node *qun, adns_answer *answer) {
  int r;
  const char *typename, *statusstring;
  adns_status ist;

  if (ov_format == fmt_inline) {
    if (fputs("; failed ",stdout) == EOF) outerr();
    print_status(st,qun,answer);
    return;
  }
  assert(ov_format == fmt_simple);
  if (st == adns_s_nxdomain) {
    r= fprintf(stderr,"%s does not exist\n", owner_show(qun,answer));
  } else {
    ist= adns_rr_info(answer->type, &typename, 0,0,0,0);
    if (st == adns_s_nodata) {
      r= fprintf(stderr,"%s has no %s record\n", owner_show(qun,answer), typename);
    } else {
      statusstring= adns_strerror(st);
      r= fprintf(stderr,"Error during DNS %s lookup for %s: %s\n",
   typename, owner_show(qun,answer), statusstring);
    }
  }
  if (r == EOF) sysfail("write error message to stderr",errno);
}
