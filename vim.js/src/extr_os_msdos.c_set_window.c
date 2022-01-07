
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int screenheight; } ;


 int Columns ;
 int Rows ;
 TYPE_1__ _video ;
 int mywindow (int,int,int ,int ) ;
 int screen_start () ;
 scalar_t__ term_console ;

__attribute__((used)) static void
set_window(void)
{
    if (term_console)
    {

 _video.screenheight = Rows;

 mywindow(1, 1, Columns, Rows);
    }
    screen_start();
}
