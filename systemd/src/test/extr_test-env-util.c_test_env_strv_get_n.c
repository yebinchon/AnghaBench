
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REPLACE_ENV_USE_ENVIRONMENT ;
 int assert_se (int) ;
 int getenv (char*) ;
 int streq (int ,char*) ;
 int streq_ptr (int ,int ) ;
 int strv_env_get_n (char**,char*,int,int ) ;

__attribute__((used)) static void test_env_strv_get_n(void) {
        const char *_env[] = {
                "FOO=NO NO NO",
                "FOO=BAR BAR",
                "BAR=waldo",
                "PATH=unset",
                ((void*)0)
        };
        char **env = (char**) _env;

        assert_se(streq(strv_env_get_n(env, "FOO__", 3, 0), "BAR BAR"));
        assert_se(streq(strv_env_get_n(env, "FOO__", 3, REPLACE_ENV_USE_ENVIRONMENT), "BAR BAR"));
        assert_se(streq(strv_env_get_n(env, "FOO", 3, 0), "BAR BAR"));
        assert_se(streq(strv_env_get_n(env, "FOO", 3, REPLACE_ENV_USE_ENVIRONMENT), "BAR BAR"));

        assert_se(streq(strv_env_get_n(env, "PATH__", 4, 0), "unset"));
        assert_se(streq(strv_env_get_n(env, "PATH", 4, 0), "unset"));
        assert_se(streq(strv_env_get_n(env, "PATH__", 4, REPLACE_ENV_USE_ENVIRONMENT), "unset"));
        assert_se(streq(strv_env_get_n(env, "PATH", 4, REPLACE_ENV_USE_ENVIRONMENT), "unset"));

        env[3] = ((void*)0);

        assert_se(!strv_env_get_n(env, "PATH__", 4, 0));
        assert_se(!strv_env_get_n(env, "PATH", 4, 0));
        assert_se(streq_ptr(strv_env_get_n(env, "PATH__", 4, REPLACE_ENV_USE_ENVIRONMENT),
                            getenv("PATH")));
        assert_se(streq_ptr(strv_env_get_n(env, "PATH", 4, REPLACE_ENV_USE_ENVIRONMENT),
                            getenv("PATH")));
}
