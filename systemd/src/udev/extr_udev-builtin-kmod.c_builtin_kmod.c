
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int ctx ;
 int log_error_errno (int ,char*,char*) ;
 int module_load_and_warn (int ,char*,int) ;
 int streq (char*,char*) ;

__attribute__((used)) static int builtin_kmod(sd_device *dev, int argc, char *argv[], bool test) {
        int i;

        if (!ctx)
                return 0;

        if (argc < 3 || !streq(argv[1], "load"))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "%s: expected: load <module>", argv[0]);

        for (i = 2; argv[i]; i++)
                (void) module_load_and_warn(ctx, argv[i], 0);

        return 0;
}
