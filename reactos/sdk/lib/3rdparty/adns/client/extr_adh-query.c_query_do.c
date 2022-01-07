
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_node {int qu; int owner; } ;


 int LIST_LINK_TAIL (int ,struct query_node*) ;
 scalar_t__ adns_r_addr ;
 scalar_t__ adns_r_none ;
 int adns_submit (int ,char const*,scalar_t__,int,struct query_node*,int *) ;
 int ads ;
 int outstanding ;
 scalar_t__ ov_type ;
 int prep_query (struct query_node**,int*) ;
 int sysfail (char*,int) ;
 int xstrsave (char const*) ;

void query_do(const char *domain) {
  struct query_node *qun;
  int quflags, r;

  prep_query(&qun,&quflags);
  qun->owner= xstrsave(domain);
  r= adns_submit(ads, domain,
   ov_type == adns_r_none ? adns_r_addr : ov_type,
   quflags,
   qun,
   &qun->qu);
  if (r) sysfail("adns_submit",r);

  LIST_LINK_TAIL(outstanding,qun);
}
