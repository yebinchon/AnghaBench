
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct index_state {int dummy; } ;
typedef int options ;
struct TYPE_7__ {int changeset; int is_repo_ro; int * fset; } ;
struct TYPE_6__ {int worktree; int email; int version; int id; int changeset; int is_readonly; } ;
typedef int SeafileCrypt ;
typedef TYPE_1__ SeafRepo ;
typedef int LockedFileSet ;
typedef int GList ;
typedef TYPE_2__ AddOptions ;


 int FALSE ;
 scalar_t__ add_recursive (int ,int ,int ,struct index_state*,int ,char*,int *,int ,int *,int *,int *,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int remove_deleted (struct index_state*,int ,char*,int *,int *,int ,int ,int ) ;

__attribute__((used)) static int
scan_worktree_for_changes (struct index_state *istate, SeafRepo *repo,
                           SeafileCrypt *crypt, GList *ignore_list,
                           LockedFileSet *fset)
{
    remove_deleted (istate, repo->worktree, "", ignore_list, fset,
                    repo->id, repo->is_readonly, repo->changeset);

    AddOptions options;
    memset (&options, 0, sizeof(options));
    options.fset = fset;
    options.is_repo_ro = repo->is_readonly;
    options.changeset = repo->changeset;

    if (add_recursive (repo->id, repo->version, repo->email,
                       istate, repo->worktree, "", crypt, FALSE, ignore_list,
                       ((void*)0), ((void*)0), &options) < 0)
        return -1;

    return 0;
}
