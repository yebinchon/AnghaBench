
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_OK ;
 int MessageBeep (int ) ;

void
gui_mch_beep(void)
{
    MessageBeep(MB_OK);
}
