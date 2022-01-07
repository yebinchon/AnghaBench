
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;
typedef int xcb_connection_t ;
typedef int uint32_t ;


 int XA_WM_HINTS ;
 int XCB_PROP_MODE_REPLACE ;
 int xcb_change_property (int *,int ,int ,int ,int ,int,int,int const*) ;

__attribute__((used)) static inline
void set_wm_hints (xcb_connection_t *conn, xcb_window_t window)
{
    static const uint32_t wm_hints[8] = {
        3,
        1,
        1,
        0, 0, 0, 0, 0,
    };
    xcb_change_property (conn, XCB_PROP_MODE_REPLACE, window, XA_WM_HINTS,
                         XA_WM_HINTS, 32, 8, wm_hints);
}
