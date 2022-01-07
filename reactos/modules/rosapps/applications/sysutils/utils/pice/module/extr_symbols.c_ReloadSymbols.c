
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int LoadSymbolsFromConfig (int ) ;
 int TRUE ;
 int UnloadSymbols () ;

BOOLEAN ReloadSymbols(void)
{
    BOOLEAN bResult;

 ENTER_FUNC();

    UnloadSymbols();

    bResult = LoadSymbolsFromConfig(TRUE);

    LEAVE_FUNC();

    return bResult;
}
