
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ __u8 ;
struct TYPE_2__ {char const* prefix; scalar_t__ name_index; } ;


 TYPE_1__* prefix_tbl ;
 size_t strlen (char const*) ;

const char *ext4_get_xattr_name_prefix(__u8 name_index,
           size_t *ret_prefix_len)
{
 int i;

 for (i = 0; prefix_tbl[i].prefix; i++) {
  size_t prefix_len = strlen(prefix_tbl[i].prefix);
  if (prefix_tbl[i].name_index == name_index) {
   if (ret_prefix_len)
    *ret_prefix_len = prefix_len;

   return prefix_tbl[i].prefix;
  }
 }
 if (ret_prefix_len)
  *ret_prefix_len = 0;

 return ((void*)0);
}
