
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* STRV_IGNORE ;

__attribute__((used)) static inline const char* STRV_IFNOTNULL(const char *x) {
        return x ? x : STRV_IGNORE;
}
