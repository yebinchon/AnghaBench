
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int priv; } ;
typedef TYPE_1__ SeafWTMonitor ;
typedef int * HANDLE ;


 int add_handle_to_iocp (TYPE_1__*,int *) ;
 int * add_watch (int ,char const*,char const*) ;

__attribute__((used)) static int handle_add_repo (SeafWTMonitor *monitor,
                            const char *repo_id,
                            const char *worktree)
{
    HANDLE handle;

    handle = add_watch (monitor->priv, repo_id, worktree);
    if (handle == ((void*)0) ||
        !add_handle_to_iocp(monitor, handle)) {
        return -1;
    }

    return 0;
}
