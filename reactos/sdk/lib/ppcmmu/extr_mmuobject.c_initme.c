
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ MmuTrapHandler ;


 scalar_t__ HTABORG ;
 int HTABSIZ ;
 scalar_t__ TakeException ;
 scalar_t__* callback ;
 int copy_trap_handler (int) ;
 scalar_t__ fpenable ;
 scalar_t__ ignore ;

void initme()
{
    int i;

    for(i = 0; i < HTABSIZ / sizeof(int); i++)
    {
 ((int *)HTABORG)[i] = 0;
    }


    for(i = 0; i < 30; i++)
    {
        callback[i] = (MmuTrapHandler)TakeException;
        if (i != 1)
            copy_trap_handler(i);
    }


    callback[5] = 0;


    callback[6] = (MmuTrapHandler)TakeException;


    callback[8] = fpenable;


    callback[9] = ignore;


    callback[0x20] = (MmuTrapHandler)TakeException;
}
