
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_trav ;
typedef int htab_t ;
typedef int PTR ;


 int htab_elements (int ) ;
 int htab_expand (int ) ;
 size_t htab_size (int ) ;
 int htab_traverse_noresize (int ,int ,int ) ;

void
htab_traverse (htab_t htab, htab_trav callback, PTR info)
{
  size_t size = htab_size (htab);
  if (htab_elements (htab) * 8 < size && size > 32)
    htab_expand (htab);

  htab_traverse_noresize (htab, callback, info);
}
