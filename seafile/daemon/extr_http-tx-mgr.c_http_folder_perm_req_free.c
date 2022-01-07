
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* token; } ;
typedef TYPE_1__ HttpFolderPermReq ;


 int g_free (TYPE_1__*) ;

void
http_folder_perm_req_free (HttpFolderPermReq *req)
{
    if (!req)
        return;
    g_free (req->token);
    g_free (req);
}
