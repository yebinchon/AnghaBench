
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int environ ;
 int saved_env ;
 char** strv_copy (int ) ;
 int strv_free_and_replace (int ,char**) ;

__attribute__((used)) static int save_env(void) {
        char **l;

        l = strv_copy(environ);
        if (!l)
                return -ENOMEM;

        strv_free_and_replace(saved_env, l);
        return 0;
}
