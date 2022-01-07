
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __u8 ;
struct TYPE_2__ {char* prefix; int name_index; } ;
typedef int BOOL ;


 int ASSERT (int*) ;
 int FALSE ;
 int TRUE ;
 int memcmp (char const*,char*,size_t) ;
 TYPE_1__* prefix_tbl ;
 size_t strlen (char*) ;

const char *ext4_extract_xattr_name(const char *full_name, size_t full_name_len,
         __u8 *name_index, size_t *name_len,
         BOOL *found)
{
 int i;
 ASSERT(name_index);
 ASSERT(found);

 *found = FALSE;

 if (!full_name_len) {
  if (name_len)
   *name_len = 0;

  return ((void*)0);
 }

 for (i = 0; prefix_tbl[i].prefix; i++) {
  size_t prefix_len = strlen(prefix_tbl[i].prefix);
  if (full_name_len >= prefix_len &&
      !memcmp(full_name, prefix_tbl[i].prefix, prefix_len)) {
   BOOL require_name =
    prefix_tbl[i].prefix[prefix_len - 1] == '.';
   *name_index = prefix_tbl[i].name_index;
   if (name_len)
    *name_len = full_name_len - prefix_len;

   if (!(full_name_len - prefix_len) && require_name)
    return ((void*)0);

   *found = TRUE;
   if (require_name)
    return full_name + prefix_len;

   return ((void*)0);
  }
 }
 if (name_len)
  *name_len = 0;

 return ((void*)0);
}
