
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int boolean_t ;


 int DATA_TYPE_BOOLEAN_VALUE ;
 int nvpair_value_common (int *,int ,int *,int *) ;

int
nvpair_value_boolean_value(nvpair_t *nvp, boolean_t *val)
{
 return (nvpair_value_common(nvp, DATA_TYPE_BOOLEAN_VALUE, ((void*)0), val));
}
