
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_mech_type_t ;


 int B_TRUE ;
 int crypto_mech2id_common (char*,int ) ;

crypto_mech_type_t
crypto_mech2id(char *mechname)
{
 return (crypto_mech2id_common(mechname, B_TRUE));
}
