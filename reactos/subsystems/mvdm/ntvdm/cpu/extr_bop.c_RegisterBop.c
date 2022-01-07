
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int EMULATOR_BOP_PROC ;
typedef size_t BYTE ;


 int * BopProc ;

VOID RegisterBop(BYTE BopCode, EMULATOR_BOP_PROC BopHandler)
{
    BopProc[BopCode] = BopHandler;
}
