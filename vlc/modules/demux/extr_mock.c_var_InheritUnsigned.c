
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ UINT_MAX ;
 scalar_t__ var_InheritInteger (int *,char const*) ;

__attribute__((used)) static unsigned
var_InheritUnsigned(vlc_object_t *obj, const char *name)
{
    int64_t value = var_InheritInteger(obj, name);
    return value >= 0 && value < UINT_MAX ? value : UINT_MAX;
}
