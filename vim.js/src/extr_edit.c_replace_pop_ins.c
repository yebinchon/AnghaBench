
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NORMAL ;
 int State ;
 int dec_cursor () ;
 int ins_char (int) ;
 int mb_replace_pop_ins (int) ;
 int replace_pop () ;

__attribute__((used)) static void
replace_pop_ins()
{
    int cc;
    int oldState = State;

    State = NORMAL;
    while ((cc = replace_pop()) > 0)
    {



 ins_char(cc);

 dec_cursor();
    }
    State = oldState;
}
