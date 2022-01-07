
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int HLF_R ;
 int MSG_PUTS (int ) ;
 int MSG_PUTS_ATTR (int ,int ) ;
 int _ (char*) ;
 scalar_t__ got_int ;
 int hl_attr (int ) ;
 int msg_clr_eos () ;
 scalar_t__ msg_didout ;
 int msg_putchar (char) ;
 int msg_use_printf () ;
 int p_more ;

__attribute__((used)) static void
hit_return_msg()
{
    int save_p_more = p_more;

    p_more = FALSE;
    if (msg_didout)
 msg_putchar('\n');
    if (got_int)
 MSG_PUTS(_("Interrupt: "));

    MSG_PUTS_ATTR(_("Press ENTER or type command to continue"), hl_attr(HLF_R));
    if (!msg_use_printf())
 msg_clr_eos();
    p_more = save_p_more;
}
