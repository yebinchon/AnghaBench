
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Assoc ;


 int * new_Assoc (int,int,int const*) ;

Assoc *new_Assoc_default(const uint8_t *public_id)
{


    return new_Assoc(6, 15, public_id);
}
