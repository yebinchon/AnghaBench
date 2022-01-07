
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;


 char* NVP_NAME (int *) ;

char *
nvpair_name(nvpair_t *nvp)
{
 return (NVP_NAME(nvp));
}
