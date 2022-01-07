
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPTSTR ;
typedef int BOOL ;


 int IsFATName (int ) ;

BOOL
IsLFN(LPTSTR pName)
{
    return !IsFATName(pName);
}
