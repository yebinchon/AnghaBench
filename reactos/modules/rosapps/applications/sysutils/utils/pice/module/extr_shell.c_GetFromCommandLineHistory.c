
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef scalar_t__ LPSTR ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 scalar_t__* aszCommandLines ;

LPSTR GetFromCommandLineHistory(ULONG ulCurrentCommandPos)
{
    LPSTR pRet;

    ENTER_FUNC();

    DPRINT((0,"GetFromCommandLineHistory(): current = %u\n",ulCurrentCommandPos));


    pRet = aszCommandLines[ulCurrentCommandPos] + 1;

    DPRINT((0,"GetFromCommandLineHistory(%s)\n",pRet));

    LEAVE_FUNC();

    return pRet;
}
