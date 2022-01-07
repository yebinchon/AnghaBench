
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_2__ {int obj; } ;
typedef TYPE_1__ vlc_tls_st_t ;


 int EAGAIN ;
 int ECONNRESET ;



 int errno ;
 int msg_Dbg (int ,char*,int) ;
 int msg_Err (int ,char*,int) ;

__attribute__((used)) static int st_Error (vlc_tls_t *obj, int val)
{
    vlc_tls_st_t *sys = (vlc_tls_st_t *)obj;

    switch (val)
    {
        case 128:
            errno = EAGAIN;
            break;

        case 129:
        case 130:
            msg_Dbg(sys->obj, "Connection closed with code %d", val);
            errno = ECONNRESET;
            break;
        default:
            msg_Err(sys->obj, "Found error %d", val);
            errno = ECONNRESET;
    }
    return -1;
}
