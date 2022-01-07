
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int data_type_t ;


 int NVP_TYPE (int *) ;

data_type_t
nvpair_type(nvpair_t *nvp)
{
 return (NVP_TYPE(nvp));
}
