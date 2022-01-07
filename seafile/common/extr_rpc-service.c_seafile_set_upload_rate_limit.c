
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sync_mgr; } ;
struct TYPE_4__ {int upload_limit; } ;
typedef int GError ;


 int KEY_UPLOAD_LIMIT ;
 TYPE_2__* seaf ;
 int seafile_session_config_set_int (TYPE_2__*,int ,int) ;

int
seafile_set_upload_rate_limit (int limit, GError **error)
{
    if (limit < 0)
        limit = 0;

    seaf->sync_mgr->upload_limit = limit;

    return seafile_session_config_set_int (seaf, KEY_UPLOAD_LIMIT, limit);
}
