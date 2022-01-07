
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int g_thread_pool_free (int *,int ,int ) ;
 int * tpool ;

void rofi_view_workers_finalize ( void )
{
    if ( tpool ) {
        g_thread_pool_free ( tpool, TRUE, TRUE );
        tpool = ((void*)0);
    }
}
