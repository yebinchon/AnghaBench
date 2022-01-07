
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int * sa_idx_tab; int * sa_variable_lengths; } ;
typedef TYPE_1__ sa_idx_tab_t ;
typedef size_t sa_attr_type_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int *) ;
 int TOC_ATTR_ENCODE (int ,int,int ) ;

void
sa_build_idx_tab(void *hdr, void *attr_addr, sa_attr_type_t attr,
    uint16_t length, int length_idx, boolean_t var_length, void *userp)
{
 sa_idx_tab_t *idx_tab = userp;

 if (var_length) {
  ASSERT(idx_tab->sa_variable_lengths);
  idx_tab->sa_variable_lengths[length_idx] = length;
 }
 TOC_ATTR_ENCODE(idx_tab->sa_idx_tab[attr], length_idx,
     (uint32_t)((uintptr_t)attr_addr - (uintptr_t)hdr));
}
