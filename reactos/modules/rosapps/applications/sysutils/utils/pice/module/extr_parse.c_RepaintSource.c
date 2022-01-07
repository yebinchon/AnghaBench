
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Count; } ;
typedef TYPE_1__ ARGS ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int PICE_memset (TYPE_1__*,int ,int) ;
 int Unassemble (TYPE_1__*) ;
 scalar_t__ ulLastDisassEndAddress ;
 scalar_t__ ulLastDisassStartAddress ;

void RepaintSource(void)
{
    ARGS Args;

    ENTER_FUNC();


    PICE_memset(&Args,0,sizeof(ARGS));

    ulLastDisassStartAddress=ulLastDisassEndAddress=0;
 Args.Count=0;
 Unassemble(&Args);

    LEAVE_FUNC();
}
