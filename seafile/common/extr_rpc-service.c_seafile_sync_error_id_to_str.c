
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GError ;


 char* g_strdup (int ) ;
 int sync_error_id_to_str (int) ;

char*
seafile_sync_error_id_to_str (int error_id, GError **error)
{
    return g_strdup(sync_error_id_to_str (error_id));
}
