
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w_cline_height; } ;


 int * compl_match_array ;
 TYPE_1__* curwin ;
 int ins_compl_del_pum () ;
 int update_screen (int ) ;

__attribute__((used)) static void
ins_compl_upd_pum()
{
    int h;

    if (compl_match_array != ((void*)0))
    {
 h = curwin->w_cline_height;
 update_screen(0);
 if (h != curwin->w_cline_height)
     ins_compl_del_pum();
    }
}
