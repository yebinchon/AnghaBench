
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int F_OK ;
 char* SYSTEMD_CATALOG_DIR ;
 scalar_t__ access (char const*,int ) ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 char* getenv (char*) ;
 int load_testdata_env () ;
 int stderr ;

const char* get_catalog_dir(void) {
        const char *env;

        load_testdata_env();


        env = getenv("SYSTEMD_CATALOG_DIR");
        if (!env)
                env = SYSTEMD_CATALOG_DIR;
        if (access(env, F_OK) < 0) {
                fprintf(stderr, "ERROR: $SYSTEMD_CATALOG_DIR directory [%s] does not exist\n", env);
                exit(EXIT_FAILURE);
        }
        return env;
}
