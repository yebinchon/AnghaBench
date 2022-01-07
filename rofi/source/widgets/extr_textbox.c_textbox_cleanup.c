
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_hash_table_destroy (int ) ;
 int g_object_unref (int *) ;
 int * p_context ;
 int tbfc_cache ;

void textbox_cleanup ( void )
{
    g_hash_table_destroy ( tbfc_cache );
    if ( p_context ) {
        g_object_unref ( p_context );
        p_context = ((void*)0);
    }
}
