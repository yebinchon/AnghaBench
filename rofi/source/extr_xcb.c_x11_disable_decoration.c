
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_atom_t ;
typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int connection; } ;


 int XCB_PROP_MODE_REPLACE ;
 size_t _MOTIF_WM_HINTS ;
 int * netatoms ;
 TYPE_1__* xcb ;
 int xcb_change_property (int ,int ,int ,int ,int ,int,int,struct MotifWMHints*) ;

void x11_disable_decoration ( xcb_window_t window )
{

    const uint32_t MWM_HINTS_DECORATIONS = ( 1 << 1 );

    struct MotifWMHints
    {
        uint32_t flags;
        uint32_t functions;
        uint32_t decorations;
        int32_t inputMode;
        uint32_t state;
    };

    struct MotifWMHints hints;
    hints.flags = MWM_HINTS_DECORATIONS;
    hints.decorations = 0;
    hints.functions = 0;
    hints.inputMode = 0;
    hints.state = 0;

    xcb_atom_t ha = netatoms[_MOTIF_WM_HINTS];
    xcb_change_property ( xcb->connection, XCB_PROP_MODE_REPLACE, window, ha, ha, 32, 5, &hints );
}
