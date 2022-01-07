
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int ALT_INPUT_LOCK_OFF ;
 int do_cmdline_cmd (int *) ;
 int free (int *) ;
 int * initialFileCmd ;

void
workshop_postinit()
{
    do_cmdline_cmd((char_u *)initialFileCmd);
    ALT_INPUT_LOCK_OFF;
    free(initialFileCmd);
    initialFileCmd = ((void*)0);
}
