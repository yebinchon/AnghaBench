
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sattr_T ;
typedef int char_u ;
struct TYPE_2__ {scalar_t__ in_use; } ;


 int Columns ;
 int* LineOffset ;
 int Rows ;
 scalar_t__* ScreenAttrs ;
 int TRUE ;
 int can_clear (int *) ;
 TYPE_1__ gui ;
 int gui_undraw_cursor () ;
 int screen_del_lines (int ,int ,int,int,int ,int *) ;
 int screen_fill (int,int,int,int,char,char,int ) ;

__attribute__((used)) static void
msg_scroll_up()
{







    screen_del_lines(0, 0, 1, (int)Rows, TRUE, ((void*)0));

    if (!can_clear((char_u *)" "))
    {



 screen_fill((int)Rows - 1, (int)Rows, 0, (int)Columns, ' ', ' ', 0);



 if (ScreenAttrs[LineOffset[Rows - 2] + Columns - 1] == (sattr_T)-1)
     screen_fill((int)Rows - 2, (int)Rows - 1,
     (int)Columns - 1, (int)Columns, ' ', ' ', 0);
    }
}
