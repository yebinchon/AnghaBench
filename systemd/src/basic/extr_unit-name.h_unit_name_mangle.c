
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitNameMangle ;


 int unit_name_mangle_with_suffix (char const*,int *,int ,char*,char**) ;

__attribute__((used)) static inline int unit_name_mangle(const char *name, UnitNameMangle flags, char **ret) {
        return unit_name_mangle_with_suffix(name, ((void*)0), flags, ".service", ret);
}
