
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int const member_4; int member_3; } ;
typedef TYPE_1__ Verb ;


 int EOPNOTSUPP ;
 int SYNTHETIC_ERRNO (int ) ;


 scalar_t__ detect_container () ;
 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;

 int is_efi_boot () ;
 int log_error_errno (int ,char*) ;
 int log_open () ;
 int log_parse_environment () ;
 int parse_argv (int,char**) ;



__attribute__((used)) static int run(int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "help", 132, 132, 0, 130 },
                { "status", 132, 1, 131, 128 },
                { "good", 132, 1, 0, 129 },
                { "bad", 132, 1, 0, 129 },
                { "indeterminate", 132, 1, 0, 129 },
                {}
        };

        int r;

        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        if (detect_container() > 0)
                return log_error_errno(SYNTHETIC_ERRNO(EOPNOTSUPP),
                                       "Marking a boot is not supported in containers.");

        if (!is_efi_boot())
                return log_error_errno(SYNTHETIC_ERRNO(EOPNOTSUPP),
                                       "Marking a boot is only supported on EFI systems.");

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
