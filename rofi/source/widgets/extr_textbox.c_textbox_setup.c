
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GDestroyNotify ;


 int g_hash_table_new_full (int ,int ,int *,int ) ;
 int g_str_equal ;
 int g_str_hash ;
 int tbfc_cache ;
 scalar_t__ tbfc_entry_free ;

void textbox_setup ( void )
{
    tbfc_cache = g_hash_table_new_full ( g_str_hash, g_str_equal, ((void*)0), (GDestroyNotify) tbfc_entry_free );
}
