
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int AppendToRedobuff (int *) ;
 scalar_t__ CTRL_V_STR ;
 int Ctrl_V ;
 int FALSE ;
 int TRUE ;
 int add_to_showcmd_c (int ) ;
 int char_avail () ;
 int clear_showcmd () ;
 int edit_putchar (char,int) ;
 int edit_unputchar () ;
 int get_literal () ;
 int ins_redraw (int) ;
 int insert_special (int,int,int) ;
 scalar_t__ redrawing () ;
 int revins_chars ;
 int revins_legal ;

__attribute__((used)) static void
ins_ctrl_v()
{
    int c;
    int did_putchar = FALSE;


    ins_redraw(FALSE);

    if (redrawing() && !char_avail())
    {
 edit_putchar('^', TRUE);
 did_putchar = TRUE;
    }
    AppendToRedobuff((char_u *)CTRL_V_STR);





    c = get_literal();
    if (did_putchar)


 edit_unputchar();



    insert_special(c, FALSE, TRUE);




}
