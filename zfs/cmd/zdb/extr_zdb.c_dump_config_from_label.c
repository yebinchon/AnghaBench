
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int config_nv; int config; } ;
typedef TYPE_1__ zdb_label_t ;


 int dump_nvlist (int ,int) ;
 int dump_nvlist_stats (int ,size_t) ;
 int* dump_opt ;
 int first_label (int ) ;
 int print_label_header (TYPE_1__*,int) ;
 int print_label_numbers (char*,int ) ;

__attribute__((used)) static void
dump_config_from_label(zdb_label_t *label, size_t buflen, int l)
{
 if (dump_opt['q'])
  return;

 if ((dump_opt['l'] < 3) && (first_label(label->config) != l))
  return;

 print_label_header(label, l);
 dump_nvlist(label->config_nv, 4);
 print_label_numbers("    labels = ", label->config);

 if (dump_opt['l'] >= 2)
  dump_nvlist_stats(label->config_nv, buflen);
}
