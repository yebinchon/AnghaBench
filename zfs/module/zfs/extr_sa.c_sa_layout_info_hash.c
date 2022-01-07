
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int sa_attr_type_t ;


 unsigned long long SA_ATTR_HASH (int ) ;

__attribute__((used)) static uint64_t
sa_layout_info_hash(sa_attr_type_t *attrs, int attr_count)
{
 int i;
 uint64_t crc = -1ULL;

 for (i = 0; i != attr_count; i++)
  crc ^= SA_ATTR_HASH(attrs[i]);

 return (crc);
}
