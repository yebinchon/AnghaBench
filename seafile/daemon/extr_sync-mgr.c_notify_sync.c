
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_16__ {int mq_mgr; int commit_mgr; } ;
struct TYPE_15__ {int str; } ;
struct TYPE_14__ {int desc; int parent_id; int commit_id; } ;
struct TYPE_13__ {int id; int name; TYPE_1__* head; int version; } ;
struct TYPE_12__ {int commit_id; } ;
typedef TYPE_2__ SeafRepo ;
typedef TYPE_3__ SeafCommit ;
typedef TYPE_4__ GString ;


 int FALSE ;
 int TRUE ;
 int find_meaningful_commit ;
 int g_string_append_printf (TYPE_4__*,char*,int ,int ,int ,int ,int ) ;
 int g_string_free (TYPE_4__*,int ) ;
 TYPE_4__* g_string_new (int *) ;
 TYPE_7__* seaf ;
 int seaf_commit_manager_traverse_commit_tree_truncated (int ,int ,int ,int ,int ,TYPE_3__**,int ) ;
 int seaf_commit_unref (TYPE_3__*) ;
 int seaf_mq_manager_publish_notification (int ,char*,int ) ;
 int seaf_warning (char*,int ) ;

__attribute__((used)) static void
notify_sync (SeafRepo *repo, gboolean is_multipart_upload)
{
    SeafCommit *head = ((void*)0);

    if (!seaf_commit_manager_traverse_commit_tree_truncated (seaf->commit_mgr,
                                                   repo->id, repo->version,
                                                   repo->head->commit_id,
                                                   find_meaningful_commit,
                                                   &head, FALSE)) {
        seaf_warning ("Failed to traverse commit tree of %.8s.\n", repo->id);
        return;
    }
    if (!head)
        return;

    GString *buf = g_string_new (((void*)0));
    g_string_append_printf (buf, "%s\t%s\t%s\t%s\t%s",
                            repo->name,
                            repo->id,
                            head->commit_id,
                            head->parent_id,
                            head->desc);
    if (!is_multipart_upload)
        seaf_mq_manager_publish_notification (seaf->mq_mgr,
                                              "sync.done",
                                              buf->str);
    else
        seaf_mq_manager_publish_notification (seaf->mq_mgr,
                                              "sync.multipart_upload",
                                              buf->str);
    g_string_free (buf, TRUE);
    seaf_commit_unref (head);
}
