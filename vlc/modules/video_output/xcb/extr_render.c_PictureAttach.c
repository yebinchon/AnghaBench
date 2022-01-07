
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xcb_void_cookie_t ;
typedef scalar_t__ xcb_shm_seg_t ;
typedef int xcb_generic_error_t ;
typedef int xcb_connection_t ;
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_8__ {scalar_t__ segment; int * conn; } ;
typedef TYPE_2__ vout_display_sys_t ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_10__ {int fd; size_t offset; } ;
typedef TYPE_4__ picture_buffer_t ;


 int free (int *) ;
 int vlc_dup (int) ;
 int * xcb_request_check (int *,int ) ;
 int xcb_shm_attach_fd_checked (int *,scalar_t__,int,int) ;

__attribute__((used)) static size_t PictureAttach(vout_display_t *vd, picture_t *pic)
{
    vout_display_sys_t *sys = vd->sys;
    xcb_connection_t *conn = sys->conn;
    xcb_shm_seg_t segment = sys->segment;
    const picture_buffer_t *buf = pic->p_sys;

    if (segment == 0
     || buf->fd == -1 )
        return -1;

    int fd = vlc_dup(buf->fd);
    if (fd == -1)
        return -1;

    xcb_void_cookie_t c = xcb_shm_attach_fd_checked(conn, segment, fd, 1);
    xcb_generic_error_t *e = xcb_request_check(conn, c);
    if (e != ((void*)0))
    {
        free(e);
        return -1;
    }
    return buf->offset;
}
