
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vlc_thread_t ;
struct TYPE_6__ {int data; int (* entry ) (int ) ;} ;


 int clean_detached_thread (TYPE_1__*) ;
 int stub1 (int ) ;
 TYPE_1__* thread ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int (*) (TYPE_1__*),TYPE_1__*) ;

__attribute__((used)) static void *detached_thread(void *data)
{
    vlc_thread_t th = data;

    thread = th;

    vlc_cleanup_push(clean_detached_thread, th);
    th->entry(th->data);
    vlc_cleanup_pop();
    clean_detached_thread(th);
    return ((void*)0);
}
