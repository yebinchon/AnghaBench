
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_cursor {int hidden; TYPE_1__* seat; int cursor; } ;
struct TYPE_2__ {int wlr_seat; } ;


 int wlr_cursor_set_image (int ,int *,int ,int ,int ,int ,int ,int ) ;
 int wlr_seat_pointer_clear_focus (int ) ;

__attribute__((used)) static void cursor_hide(struct sway_cursor *cursor) {
 wlr_cursor_set_image(cursor->cursor, ((void*)0), 0, 0, 0, 0, 0, 0);
 cursor->hidden = 1;
 wlr_seat_pointer_clear_focus(cursor->seat->wlr_seat);
}
