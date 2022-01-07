
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UnitFileScope ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 char** IN_SET (scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ UNIT_FILE_GLOBAL ;
 scalar_t__ UNIT_FILE_SYSTEM ;
 int UNIT_FILE_USER ;
 int assert (char**) ;
 char* path_join (char const*,char*) ;
 char* strdup (char*) ;
 int xdg_user_runtime_dir (char**,char*) ;

__attribute__((used)) static int acquire_transient_dir(
                UnitFileScope scope,
                const char *tempdir,
                char **ret) {

        char *transient;

        assert(ret);
        assert(IN_SET(scope, UNIT_FILE_SYSTEM, UNIT_FILE_USER, UNIT_FILE_GLOBAL));

        if (scope == UNIT_FILE_GLOBAL)
                return -EOPNOTSUPP;

        if (tempdir)
                transient = path_join(tempdir, "transient");
        else if (scope == UNIT_FILE_SYSTEM)
                transient = strdup("/run/systemd/transient");
        else
                return xdg_user_runtime_dir(ret, "/systemd/transient");

        if (!transient)
                return -ENOMEM;
        *ret = transient;
        return 0;
}
