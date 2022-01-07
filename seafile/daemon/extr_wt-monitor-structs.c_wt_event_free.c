
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ remain_files; struct TYPE_4__* new_path; struct TYPE_4__* path; } ;
typedef TYPE_1__ WTEvent ;


 int free_path ;
 int g_free (TYPE_1__*) ;
 int g_queue_foreach (scalar_t__,int ,int *) ;
 int g_queue_free (scalar_t__) ;

void wt_event_free (WTEvent *event)
{
    g_free (event->path);
    g_free (event->new_path);
    if (event->remain_files) {
        g_queue_foreach (event->remain_files, free_path, ((void*)0));
        g_queue_free (event->remain_files);
    }
    g_free (event);
}
