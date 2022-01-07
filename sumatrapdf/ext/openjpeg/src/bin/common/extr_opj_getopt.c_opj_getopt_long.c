
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_arg; int* flag; int val; int name; } ;
typedef TYPE_1__ opj_option_t ;
typedef int longopts ;


 int BADCH ;
 int fprintf (int ,char*,...) ;
 char* opj_optarg ;
 scalar_t__ opj_opterr ;
 int opj_optind ;
 int opj_optopt ;
 int stderr ;
 char* strchr (char const*,int) ;
 int strcmp (int ,char*) ;
 int strlen (char*) ;

int opj_getopt_long(int argc, char * const argv[], const char *optstring,
                    const opj_option_t *longopts, int totlen)
{
    static int lastidx, lastofs;
    const char *tmp;
    int i, len;
    char param = 1;

again:
    if (opj_optind >= argc || !argv[opj_optind] || *argv[opj_optind] != '-') {
        return -1;
    }

    if (argv[opj_optind][0] == '-' && argv[opj_optind][1] == 0) {
        if (opj_optind >= (argc - 1)) {
            param = 0;
        } else {
            if (argv[opj_optind + 1][0] == '-') {
                param = 0;
            } else {
                param = 2;
            }
        }
    }

    if (param == 0) {
        ++opj_optind;
        return (BADCH);
    }

    if (argv[opj_optind][0] == '-') {
        char* arg;
        const opj_option_t* o;
        o = longopts;
        len = sizeof(longopts[0]);

        if (param > 1) {
            if (opj_optind + 1 >= argc) {
                return -1;
            }
            arg = argv[opj_optind + 1];
            opj_optind++;
        } else {
            arg = argv[opj_optind] + 1;
        }

        if (strlen(arg) > 1) {
            for (i = 0; i < totlen; i = i + len, o++) {
                if (!strcmp(o->name, arg)) {
                    if (o->has_arg == 0) {
                        if ((argv[opj_optind + 1]) && (!(argv[opj_optind + 1][0] == '-'))) {
                            fprintf(stderr, "%s: option does not require an argument. Ignoring %s\n", arg,
                                    argv[opj_optind + 1]);
                            ++opj_optind;
                        }
                    } else {
                        opj_optarg = argv[opj_optind + 1];
                        if (opj_optarg) {
                            if (opj_optarg[0] ==
                                    '-') {
                                if (opj_opterr) {
                                    fprintf(stderr, "%s: option requires an argument\n", arg);
                                    return (BADCH);
                                }
                            }
                        }
                        if (!opj_optarg && o->has_arg == 1) {
                            if (opj_opterr) {
                                fprintf(stderr, "%s: option requires an argument \n", arg);
                                return (BADCH);
                            }
                        }
                        ++opj_optind;
                    }
                    ++opj_optind;
                    if (o->flag) {
                        *(o->flag) = o->val;
                    } else {
                        return o->val;
                    }
                    return 0;
                }
            }
            fprintf(stderr, "Invalid option %s\n", arg);
            ++opj_optind;
            return (BADCH);
        } else {
            if (*optstring == ':') {
                return ':';
            }
            if (lastidx != opj_optind) {
                lastidx = opj_optind;
                lastofs = 0;
            }
            opj_optopt = argv[opj_optind][lastofs + 1];
            if ((tmp = strchr(optstring, opj_optopt))) {
                if (*tmp == 0) {
                    ++opj_optind;
                    goto again;
                }
                if (tmp[1] == ':') {
                    if (tmp[2] == ':' ||
                            argv[opj_optind][lastofs + 2]) {
                        if (!*(opj_optarg = argv[opj_optind] + lastofs + 2)) {
                            opj_optarg = 0;
                        }
                        goto found;
                    }
                    opj_optarg = argv[opj_optind + 1];
                    if (opj_optarg) {
                        if (opj_optarg[0] ==
                                '-') {
                            if (opj_opterr) {
                                fprintf(stderr, "%s: option requires an argument\n", arg);
                                ++opj_optind;
                                return (BADCH);
                            }
                        }
                    }
                    if (!opj_optarg) {
                        if (opj_opterr) {
                            fprintf(stderr, "%s: option requires an argument\n", arg);
                            ++opj_optind;
                            return (BADCH);
                        }
                    }
                    ++opj_optind;
                } else {
                    ++lastofs;
                    return opj_optopt;
                }
found:
                ++opj_optind;
                return opj_optopt;
            } else {
                fprintf(stderr, "Invalid option %s\n", arg);
                ++opj_optind;
                return (BADCH);
            }

        }
    }
    fprintf(stderr, "Invalid option\n");
    ++opj_optind;
    return (BADCH);;
}
