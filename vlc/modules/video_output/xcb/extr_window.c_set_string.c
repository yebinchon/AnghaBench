
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;
typedef int xcb_connection_t ;
typedef int xcb_atom_t ;


 int XCB_PROP_MODE_REPLACE ;
 int strlen (char const*) ;
 int xcb_change_property (int *,int ,int ,int ,int ,int,int ,char const*) ;

__attribute__((used)) static inline
void set_string (xcb_connection_t *conn, xcb_window_t window,
                 xcb_atom_t type, xcb_atom_t atom, const char *str)
{
    xcb_change_property (conn, XCB_PROP_MODE_REPLACE, window, atom, type,
                                      8, strlen (str), str);
}
