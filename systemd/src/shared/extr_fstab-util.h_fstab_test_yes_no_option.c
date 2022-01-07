
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 scalar_t__ fstab_filter_options (char const*,char const*,char const**,int *,int *) ;

__attribute__((used)) static inline bool fstab_test_yes_no_option(const char *opts, const char *yes_no) {
        const char *opt;




        assert_se(fstab_filter_options(opts, yes_no, &opt, ((void*)0), ((void*)0)) >= 0);

        return opt == yes_no;
}
