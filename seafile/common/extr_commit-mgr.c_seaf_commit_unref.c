
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ref; } ;
typedef TYPE_1__ SeafCommit ;


 int seaf_commit_free (TYPE_1__*) ;

void
seaf_commit_unref (SeafCommit *commit)
{
    if (!commit)
        return;

    if (--commit->ref <= 0)
        seaf_commit_free (commit);
}
