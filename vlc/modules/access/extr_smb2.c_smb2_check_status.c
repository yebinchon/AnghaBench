
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct access_sys {int error_status; int res_done; int smb2; } ;
struct TYPE_4__ {struct access_sys* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int msg_Warn (TYPE_1__*,char*,char const*,int,char const*) ;
 char* smb2_get_error (int ) ;

__attribute__((used)) static int
smb2_check_status(stream_t *access, int status, const char *psz_func)
{
    struct access_sys *sys = access->p_sys;

    if (status < 0)
    {
        const char *psz_error = smb2_get_error(sys->smb2);
        msg_Warn(access, "%s failed: %d, '%s'", psz_func, status, psz_error);
        sys->error_status = status;
        return -1;
    }
    else
    {
        sys->res_done = 1;
        return 0;
    }
}
