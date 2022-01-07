
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_void_cookie_t ;
struct TYPE_4__ {int error_code; } ;
typedef TYPE_1__ xcb_generic_error_t ;
typedef int xcb_connection_t ;
typedef int vout_display_t ;


 int assert (int) ;
 int free (TYPE_1__*) ;
 int msg_Err (int *,char*,char const*,int) ;
 TYPE_1__* xcb_request_check (int *,int ) ;

int vlc_xcb_error_Check(vout_display_t *vd, xcb_connection_t *conn,
                        const char *str, xcb_void_cookie_t ck)
{
    xcb_generic_error_t *err;

    err = xcb_request_check (conn, ck);
    if (err)
    {
        int code = err->error_code;

        free (err);
        msg_Err (vd, "%s: X11 error %d", str, code);
        assert (code != 0);
        return code;
    }
    return 0;
}
