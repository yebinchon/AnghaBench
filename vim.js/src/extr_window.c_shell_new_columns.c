
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Columns ;
 int FALSE ;
 int TRUE ;
 int curwin ;
 int * firstwin ;
 int frame_check_width (int ,scalar_t__) ;
 int frame_new_width (int ,int,int ,int ) ;
 scalar_t__ p_ea ;
 int topframe ;
 int win_comp_pos () ;
 int win_equal (int ,int ,char) ;

void
shell_new_columns()
{
    if (firstwin == ((void*)0))
 return;



    frame_new_width(topframe, (int)Columns, FALSE, TRUE);
    if (!frame_check_width(topframe, Columns))
 frame_new_width(topframe, (int)Columns, FALSE, FALSE);

    (void)win_comp_pos();





}
