
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitFileScope ;


 int SYSTEM_GENERATOR_PATH ;



 int USER_GENERATOR_PATH ;
 int assert_not_reached (char*) ;
 char** strv_new (char*,char*,char*,int ) ;

char **generator_binary_paths(UnitFileScope scope) {

        switch (scope) {

        case 129:
                return strv_new("/run/systemd/system-generators",
                                "/etc/systemd/system-generators",
                                "/usr/local/lib/systemd/system-generators",
                                SYSTEM_GENERATOR_PATH);

        case 130:
        case 128:
                return strv_new("/run/systemd/user-generators",
                                "/etc/systemd/user-generators",
                                "/usr/local/lib/systemd/user-generators",
                                USER_GENERATOR_PATH);

        default:
                assert_not_reached("Hmm, unexpected scope.");
        }
}
