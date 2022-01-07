
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gpointer ;
typedef scalar_t__ gint ;
typedef TYPE_1__* gconstpointer ;
struct TYPE_5__ {scalar_t__ ctime; } ;
typedef TYPE_1__ SeafCommit ;



__attribute__((used)) static gint
compare_commit_by_time (gconstpointer a, gconstpointer b, gpointer unused)
{
    const SeafCommit *commit_a = a;
    const SeafCommit *commit_b = b;


    return (commit_b->ctime - commit_a->ctime);
}
