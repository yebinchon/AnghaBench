
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ streq (char*,char*) ;

__attribute__((used)) static bool early_skip_setup_check(int argc, char *argv[]) {
        bool found_deserialize = 0;
        int i;





        for (i = 1; i < argc; i++) {
                if (streq(argv[i], "--switched-root"))
                        return 0;
                else if (streq(argv[i], "--deserialize"))
                        found_deserialize = 1;
        }

        return found_deserialize;
}
