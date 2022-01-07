
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int atom; } ;
typedef TYPE_1__ xcb_intern_atom_reply_t ;
typedef int xcb_intern_atom_cookie_t ;
typedef int xcb_connection_t ;
typedef int xcb_atom_t ;


 int free (TYPE_1__*) ;
 TYPE_1__* xcb_intern_atom_reply (int *,int ,int *) ;

__attribute__((used)) static
xcb_atom_t get_atom (xcb_connection_t *conn, xcb_intern_atom_cookie_t ck)
{
    xcb_intern_atom_reply_t *reply;
    xcb_atom_t atom;

    reply = xcb_intern_atom_reply (conn, ck, ((void*)0));
    if (reply == ((void*)0))
        return 0;

    atom = reply->atom;
    free (reply);
    return atom;
}
