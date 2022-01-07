
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ empty_or_dash (char const*) ;

__attribute__((used)) static inline const char *empty_or_dash_to_null(const char *p) {
        return empty_or_dash(p) ? ((void*)0) : p;
}
