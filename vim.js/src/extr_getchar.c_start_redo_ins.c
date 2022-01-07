
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int FAIL ;
 int FALSE ;
 int NL_STR ;
 int NUL ;
 int OK ;
 int TRUE ;
 int block_redo ;
 int copy_redo (int ) ;
 int read_redo (int ,int ) ;
 int start_stuff () ;
 int stuffReadbuff (int ) ;
 int * vim_strchr (int *,int) ;

int
start_redo_ins()
{
    int c;

    if (read_redo(TRUE, FALSE) == FAIL)
 return FAIL;
    start_stuff();


    while ((c = read_redo(FALSE, FALSE)) != NUL)
    {
 if (vim_strchr((char_u *)"AaIiRrOo", c) != ((void*)0))
 {
     if (c == 'O' || c == 'o')
  stuffReadbuff(NL_STR);
     break;
 }
    }


    copy_redo(FALSE);
    block_redo = TRUE;
    return OK;
}
