
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 int ngx_free (char**) ;

__attribute__((used)) static void
ngx_cleanup_environment(void *data)
{
    char **env = data;

    if (environ == env) {






        return;
    }

    ngx_free(env);
}
