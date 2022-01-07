
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RESET_BINDING (int *) ;
 int TRUE ;
 int * aucmd_win ;
 int curwin ;
 int new_frame (int *) ;
 int * win_alloc (int *,int ) ;
 int win_init_some (int *,int ) ;

void
win_alloc_aucmd_win()
{
    aucmd_win = win_alloc(((void*)0), TRUE);
    if (aucmd_win != ((void*)0))
    {
 win_init_some(aucmd_win, curwin);
 RESET_BINDING(aucmd_win);
 new_frame(aucmd_win);
    }
}
