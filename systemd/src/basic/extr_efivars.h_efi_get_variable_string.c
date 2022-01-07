
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int efi_get_variable_string(sd_id128_t vendor, const char *name, char **p) {
        return -EOPNOTSUPP;
}
