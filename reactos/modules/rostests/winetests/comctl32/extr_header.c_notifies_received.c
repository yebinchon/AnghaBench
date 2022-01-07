
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ nExpectedNotify ;
 scalar_t__ nReceivedNotify ;
 scalar_t__ nUnexpectedNotify ;

__attribute__((used)) static BOOL notifies_received(void)
{
    BOOL fRet = (nExpectedNotify == nReceivedNotify);
    nExpectedNotify = nReceivedNotify = 0;
    nUnexpectedNotify = 0;
    return fRet;
}
