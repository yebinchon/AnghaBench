
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafWTMonitor ;
typedef int FSEventStreamRef ;


 int add_watch (int *,char const*,char const*) ;

__attribute__((used)) static int
handle_add_repo (SeafWTMonitor *monitor, const char *repo_id, const char *worktree)
{
    FSEventStreamRef stream = add_watch (monitor, repo_id, worktree);
    if (!stream)
        return -1;
    return 0;
}
