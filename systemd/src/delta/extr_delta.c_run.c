
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHOW_DEFAULTS ;
 int SHOW_OVERRIDDEN ;
 int arg_diff ;
 int arg_flags ;
 int arg_pager_flags ;
 int log_open () ;
 int log_parse_environment () ;
 int log_show_color (int) ;
 int optind ;
 int pager_open (int ) ;
 int parse_argv (int,char**) ;
 int path_simplify (char*,int) ;
 int printf (char*,char*,int) ;
 int process_suffix_chop (char*) ;
 int process_suffixes (int *) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r, k, n_found = 0;

        log_show_color(1);
        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        if (arg_flags == 0)
                arg_flags = SHOW_DEFAULTS;

        if (arg_diff < 0)
                arg_diff = !!(arg_flags & SHOW_OVERRIDDEN);
        else if (arg_diff)
                arg_flags |= SHOW_OVERRIDDEN;

        (void) pager_open(arg_pager_flags);

        if (optind < argc) {
                int i;

                for (i = optind; i < argc; i++) {
                        path_simplify(argv[i], 0);

                        k = process_suffix_chop(argv[i]);
                        if (k < 0)
                                r = k;
                        else
                                n_found += k;
                }

        } else {
                k = process_suffixes(((void*)0));
                if (k < 0)
                        r = k;
                else
                        n_found += k;
        }

        if (r >= 0)
                printf("%s%i overridden configuration files found.\n", n_found ? "\n" : "", n_found);
        return r;
}
