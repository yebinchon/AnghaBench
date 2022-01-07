
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int last_sync_time; int sync_interval; } ;
typedef TYPE_1__ SeafRepo ;


 scalar_t__ time (int *) ;

__attribute__((used)) inline static gboolean
periodic_sync_due (SeafRepo *repo)
{
    int now = (int)time(((void*)0));
    return (now > (repo->last_sync_time + repo->sync_interval));
}
