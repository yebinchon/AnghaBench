
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int threads; } ;
struct TYPE_6__ {int message; } ;
typedef TYPE_1__ GError ;


 int EXIT_FAILURE ;
 int FALSE ;
 int MIN (long,long) ;
 int TICK_N (char*) ;
 int _SC_NPROCESSORS_CONF ;
 TYPE_5__ config ;
 int exit (int ) ;
 int g_error_free (TYPE_1__*) ;
 int g_thread_pool_new (int ,int *,int,int ,TYPE_1__**) ;
 int g_thread_pool_set_max_idle_time (int) ;
 int g_thread_pool_set_max_threads (int ,int,TYPE_1__**) ;
 int g_warning (char*,int ) ;
 int rofi_view_call_thread ;
 long sysconf (int ) ;
 int tpool ;

void rofi_view_workers_initialize ( void )
{
    TICK_N ( "Setup Threadpool, start" );
    if ( config.threads == 0 ) {
        config.threads = 1;
        long procs = sysconf ( _SC_NPROCESSORS_CONF );
        if ( procs > 0 ) {
            config.threads = MIN ( procs, 128l );
        }
    }

    GError *error = ((void*)0);
    tpool = g_thread_pool_new ( rofi_view_call_thread, ((void*)0), config.threads, FALSE, &error );
    if ( error == ((void*)0) ) {

        g_thread_pool_set_max_idle_time ( 60000 );

        g_thread_pool_set_max_threads ( tpool, config.threads, &error );
    }

    if ( error != ((void*)0) ) {
        g_warning ( "Failed to setup thread pool: '%s'", error->message );
        g_error_free ( error );
        exit ( EXIT_FAILURE );
    }
    TICK_N ( "Setup Threadpool, done" );
}
