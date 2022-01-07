
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int BOOLEAN ;


 scalar_t__ REG_EXPAND_SZ ;
 scalar_t__ REG_MULTI_SZ ;
 scalar_t__ REG_SZ ;

__attribute__((used)) static
BOOLEAN
IsStringType(ULONG Type)
{
    return (Type == REG_SZ) || (Type == REG_EXPAND_SZ) || (Type == REG_MULTI_SZ);
}
