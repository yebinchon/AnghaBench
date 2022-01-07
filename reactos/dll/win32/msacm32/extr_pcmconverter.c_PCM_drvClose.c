
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int TRACE (char*,int) ;

__attribute__((used)) static DWORD PCM_drvClose(DWORD dwDevID)
{
    TRACE("(%d)\n", dwDevID);

    return 1;
}
