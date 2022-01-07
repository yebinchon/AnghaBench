
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gint ;
typedef TYPE_1__* gconstpointer ;
struct TYPE_5__ {int commit_id; } ;
typedef TYPE_1__ SeafCommit ;


 int strcmp (int ,int ) ;

__attribute__((used)) static gint
compare_commit (gconstpointer a, gconstpointer b)
{
    const SeafCommit *commit_a = a;
    const SeafCommit *commit_b = b;

    return strcmp (commit_a->commit_id, commit_b->commit_id);
}
