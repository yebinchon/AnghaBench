
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_t ;
typedef int htab_hash ;
typedef int htab_free ;
typedef int htab_eq ;
typedef int htab_del ;
typedef int htab_alloc ;


 int htab_create_typed_alloc (size_t,int ,int ,int ,int ,int ,int ) ;

htab_t
htab_create_alloc (size_t size, htab_hash hash_f, htab_eq eq_f,
                   htab_del del_f, htab_alloc alloc_f, htab_free free_f)
{
  return htab_create_typed_alloc (size, hash_f, eq_f, del_f, alloc_f, alloc_f,
      free_f);
}
