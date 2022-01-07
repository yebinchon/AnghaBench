
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ap_q_lock; int active_paths; int q_lock; int event_q; } ;
typedef TYPE_1__ WTStatus ;
typedef int WTEvent ;
 char* g_queue_peek_tail (int ) ;
 int g_queue_push_tail (int ,int *) ;
 int * g_strdup (char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_debug (char*,char*,char const*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int * wt_event_new (int,char const*,char const*) ;

__attribute__((used)) static void
add_event_to_queue (WTStatus *status,
                    int type, const char *path, const char *new_path)
{
    WTEvent *event = wt_event_new (type, path, new_path);

    char *name;
    switch (type) {
    case 132:
        name = "create/update";
        break;
    case 128:
        name = "scan dir";
        break;
    case 131:
        name = "delete";
        break;
    case 129:
        name = "rename";
        break;
    case 130:
        name = "overflow";
        break;
    case 133:
        name = "attribute change";
        break;
    default:
        name = "unknown";
    }

    seaf_debug ("Adding event: %s, %s %s\n", name, path, new_path?new_path:"");

    pthread_mutex_lock (&status->q_lock);
    g_queue_push_tail (status->event_q, event);
    pthread_mutex_unlock (&status->q_lock);

    if (type == 132) {
        pthread_mutex_lock (&status->ap_q_lock);

        char *last = g_queue_peek_tail (status->active_paths);
        if (!last || strcmp(last, path) != 0)
            g_queue_push_tail (status->active_paths, g_strdup(path));

        pthread_mutex_unlock (&status->ap_q_lock);
    }
}
