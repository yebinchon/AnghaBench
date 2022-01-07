
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DBCSCodePage; } ;
typedef TYPE_1__* PCPTABLEINFO ;
typedef int BOOL ;



BOOL
NLS_IsDBCSCodePage(PCPTABLEINFO CodePageTable)
{
    return (BOOL)CodePageTable->DBCSCodePage;
}
