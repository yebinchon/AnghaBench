
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct query_node {int qu; int owner; } ;
struct optioninfo {int dummy; } ;
typedef int sa ;


 int AF_INET ;
 int LIST_LINK_TAIL (int ,struct query_node*) ;
 scalar_t__ adns_r_none ;
 scalar_t__ adns_r_ptr ;
 int adns_submit_reverse (int ,struct sockaddr*,scalar_t__,int,struct query_node*,int *) ;
 int ads ;
 int inet_aton (char const*,int *) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int outstanding ;
 scalar_t__ ov_type ;
 int prep_query (struct query_node**,int*) ;
 int sysfail (char*,int) ;
 int usageerr (char*,char const*) ;
 int xstrsave (char const*) ;

void of_ptr(const struct optioninfo *oi, const char *arg, const char *arg2) {
  struct query_node *qun;
  int quflags, r;
  struct sockaddr_in sa;

  memset(&sa,0,sizeof(sa));
  sa.sin_family= AF_INET;
  if (!inet_aton(arg,&sa.sin_addr)) usageerr("invalid IP address %s",arg);

  prep_query(&qun,&quflags);
  qun->owner= xstrsave(arg);
  r= adns_submit_reverse(ads,
    (struct sockaddr*)&sa,
    ov_type == adns_r_none ? adns_r_ptr : ov_type,
    quflags,
    qun,
    &qun->qu);
  if (r) sysfail("adns_submit_reverse",r);

  LIST_LINK_TAIL(outstanding,qun);
}
