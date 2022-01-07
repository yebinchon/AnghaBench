
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int locked_files; } ;
typedef TYPE_1__ HttpLockedFilesRes ;


 int g_free (TYPE_1__*) ;
 int g_hash_table_destroy (int ) ;

void
http_locked_files_res_free (HttpLockedFilesRes *res)
{
    if (!res)
        return;

    g_hash_table_destroy (res->locked_files);
    g_free (res);
}
