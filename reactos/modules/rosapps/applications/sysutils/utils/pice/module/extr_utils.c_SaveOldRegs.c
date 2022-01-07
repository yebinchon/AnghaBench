
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CurrentCS ;
 int CurrentDS ;
 int CurrentEAX ;
 int CurrentEBP ;
 int CurrentEBX ;
 int CurrentECX ;
 int CurrentEDI ;
 int CurrentEDX ;
 int CurrentEFL ;
 int CurrentEIP ;
 int CurrentES ;
 int CurrentESI ;
 int CurrentESP ;
 int CurrentFS ;
 int CurrentGS ;
 int CurrentSS ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int OldCS ;
 int OldDS ;
 int OldEAX ;
 int OldEBP ;
 int OldEBX ;
 int OldECX ;
 int OldEDI ;
 int OldEDX ;
 int OldEFL ;
 int OldEIP ;
 int OldES ;
 int OldESI ;
 int OldESP ;
 int OldFS ;
 int OldGS ;
 int OldSS ;

void SaveOldRegs(void)
{

    ENTER_FUNC();

    OldEAX=CurrentEAX;
 OldEBX=CurrentEBX;
 OldECX=CurrentECX;
 OldEDX=CurrentEDX;
 OldESI=CurrentESI;
 OldEDI=CurrentEDI;
 OldEBP=CurrentEBP;
 OldESP=CurrentESP;
 OldEIP=CurrentEIP;
 OldEFL=CurrentEFL;
 OldCS=CurrentCS;
 OldDS=CurrentDS;
 OldES=CurrentES;
 OldFS=CurrentFS;
 OldGS=CurrentGS;
 OldSS=CurrentSS;

    LEAVE_FUNC();
}
