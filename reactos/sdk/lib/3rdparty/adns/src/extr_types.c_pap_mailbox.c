
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* qu; } ;
typedef TYPE_3__ parseinfo ;
typedef int adns_status ;
struct TYPE_8__ {TYPE_1__* typei; } ;
struct TYPE_7__ {int type; } ;


 int adns__qtf_mail822 ;
 int pap_domain (TYPE_3__ const*,int*,int,char**,int ) ;
 int pap_mailbox822 (TYPE_3__ const*,int*,int,char**) ;
 int pdf_quoteok ;

__attribute__((used)) static adns_status pap_mailbox(const parseinfo *pai, int *cbyte_io, int max,
          char **mb_r) {
  if (pai->qu->typei->type & adns__qtf_mail822) {
    return pap_mailbox822(pai, cbyte_io, max, mb_r);
  } else {
    return pap_domain(pai, cbyte_io, max, mb_r, pdf_quoteok);
  }
}
