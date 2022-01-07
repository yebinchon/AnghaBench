
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pName; } ;
struct TYPE_5__ {scalar_t__ dwDatatypeCount; TYPE_2__* pDatatypesInfo1; } ;
typedef TYPE_1__* PLOCAL_PRINT_PROCESSOR ;
typedef TYPE_2__* PDATATYPES_INFO_1W ;
typedef int PCWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,TYPE_1__* const,int ) ;
 int TRUE ;
 scalar_t__ wcsicmp (int ,int ) ;

BOOL
FindDatatype(const PLOCAL_PRINT_PROCESSOR pPrintProcessor, PCWSTR pwszDatatype)
{
    DWORD i;
    PDATATYPES_INFO_1W pCurrentDatatype = pPrintProcessor->pDatatypesInfo1;

    TRACE("FindDatatype(%p, %S)\n", pPrintProcessor, pwszDatatype);

    if (!pwszDatatype)
        return FALSE;

    for (i = 0; i < pPrintProcessor->dwDatatypeCount; i++)
    {
        if (wcsicmp(pCurrentDatatype->pName, pwszDatatype) == 0)
            return TRUE;

        ++pCurrentDatatype;
    }

    return FALSE;
}
