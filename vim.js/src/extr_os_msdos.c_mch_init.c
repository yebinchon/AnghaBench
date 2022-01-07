
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ax; int cx; } ;
struct TYPE_6__ {int ah; int bh; int bl; int al; } ;
union REGS {TYPE_2__ x; TYPE_1__ h; } ;
struct TYPE_8__ {int ax; } ;
struct TYPE_9__ {TYPE_3__ x; } ;
typedef TYPE_4__ __dpmi_regs ;


 int Columns ;
 int FALSE ;
 int O_BINARY ;
 int Rows ;
 int TRUE ;
 int __dpmi_int (int,TYPE_4__*) ;
 int _fmode ;
 scalar_t__ bioskey_read ;
 int bioskey_ready ;
 int clip_init (int ) ;
 int cterm_normal_bg_color ;
 int cterm_normal_fg_color ;
 int get_screenbase () ;
 int * getenv (char*) ;
 int int86 (int,union REGS*,union REGS*) ;
 int mch_get_shellsize () ;
 int mch_restore_cursor_shape (int ) ;
 int mch_update_cursor () ;
 int mouse_avail ;
 int mouse_x_div ;
 int mouse_y_div ;
 int mynormvideo () ;
 int orig_attr ;
 int out_flush () ;
 int putenv (char*) ;
 int set_interrupts (int ) ;
 int term_console ;

void
mch_init(void)
{
    union REGS regs;
    regs.h.ah = 0x08;
    regs.h.bh = 0x00;
    int86(0x10, &regs, &regs);
    orig_attr = regs.h.ah;
    mynormvideo();
    if (cterm_normal_fg_color == 0)
 cterm_normal_fg_color = (orig_attr & 0xf) + 1;
    if (cterm_normal_bg_color == 0)
 cterm_normal_bg_color = ((orig_attr >> 4) & 0xf) + 1;

    term_console = TRUE;
    _fmode = O_BINARY;
    out_flush();
    set_interrupts(TRUE);
    regs.x.ax = 0x1003;
    regs.h.bl = 0x00;
    regs.h.bh = 0x00;
    int86(0x10, &regs, &regs);






    regs.h.ah = 0x05;
    regs.x.cx = 0xffff;
    int86(0x16, &regs, &regs);
    if (regs.h.al != 1)
    {
 int i;

 for (i = 0; i < 16; ++i)
 {
     regs.h.ah = 0x10;
     int86(0x16, &regs, &regs);
     if (regs.x.ax == 0xffff)
  break;
 }
 if (i == 16)
 {
     bioskey_read = 0;
     bioskey_ready = 1;
 }
    }
}
