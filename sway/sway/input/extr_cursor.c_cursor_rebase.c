
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sway_cursor {int seat; } ;


 int get_current_time_msec () ;
 int seatop_rebase (int ,int ) ;

void cursor_rebase(struct sway_cursor *cursor) {
 uint32_t time_msec = get_current_time_msec();
 seatop_rebase(cursor->seat, time_msec);
}
