
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;


 int DATA_TYPE_STRING ;
 int nvpair_value_common (int *,int ,int *,char**) ;

int
nvpair_value_string(nvpair_t *nvp, char **val)
{
 return (nvpair_value_common(nvp, DATA_TYPE_STRING, ((void*)0), val));
}
