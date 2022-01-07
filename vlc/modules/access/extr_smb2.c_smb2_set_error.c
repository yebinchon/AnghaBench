
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct access_sys {int error_status; int smb2; } ;
struct TYPE_4__ {struct access_sys* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int msg_Err (TYPE_1__*,char*,char const*,int,int ) ;
 int smb2_get_error (int ) ;

__attribute__((used)) static void
smb2_set_error(stream_t *access, const char *psz_func, int err)
{
    struct access_sys *sys = access->p_sys;

    msg_Err(access, "%s failed: %d, %s", psz_func, err,
            smb2_get_error(sys->smb2));
    sys->error_status = err;
}
