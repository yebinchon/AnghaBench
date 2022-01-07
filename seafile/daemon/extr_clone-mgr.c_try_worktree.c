
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ g_access (char*,int ) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,char const*,int ) ;

__attribute__((used)) static char *
try_worktree (const char *worktree)
{
    char *tmp;
    unsigned int cnt;


    cnt = 1;
    while (1) {
        tmp = g_strdup_printf("%s-%d", worktree, cnt++);
        if (g_access(tmp, F_OK) < 0) {
            return tmp;
        }

        if (cnt == -1U) {

            g_free(tmp);
            return ((void*)0);
        }

        g_free(tmp);
    }


}
