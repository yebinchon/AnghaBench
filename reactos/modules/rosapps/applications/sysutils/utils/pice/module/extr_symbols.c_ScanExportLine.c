
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PULONG ;
typedef int LPSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ ReadHex (int,int ) ;
 int TRUE ;

BOOLEAN ScanExportLine(LPSTR p,PULONG ulValue,LPSTR* ppPtrToSymbol)
{
    BOOLEAN bResult = FALSE;

    if(ReadHex(p,ulValue))
    {
        p += 11;
        *ppPtrToSymbol += 11;
        bResult = TRUE;
    }

    return bResult;
}
