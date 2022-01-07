
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_mech_type_t ;
typedef int boolean_t ;


 int kcf_mech_hash_find (char*) ;

crypto_mech_type_t
crypto_mech2id_common(char *mechname, boolean_t load_module)
{
 crypto_mech_type_t mt = kcf_mech_hash_find(mechname);
 return (mt);
}
