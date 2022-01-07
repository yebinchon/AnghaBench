
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fstab_filter_options (char const*,char const*,int *,int *,int *) ;

__attribute__((used)) static inline bool fstab_test_option(const char *opts, const char *names) {
        return !!fstab_filter_options(opts, names, ((void*)0), ((void*)0), ((void*)0));
}
