
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int* PULONG ;
typedef int* LPSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 int StrLenUpToWhiteChar (int*,char*) ;
 int TRUE ;

BOOLEAN ConvertSizeToKeyword(LPSTR p,PULONG pValue)
{
    ULONG count;

 count=StrLenUpToWhiteChar(p," ");
    if(count > 1)
     return FALSE;

    switch(*p)
    {

        case 'b':
        case 'B':
            *pValue = 1;
            break;

        case 'w':
        case 'W':
            *pValue = 2;
            break;

        case 'd':
        case 'D':
            *pValue = 4;
            break;

        case 'q':
        case 'Q':
            *pValue = 4;
            break;
        default:
            return FALSE;
    }

    return TRUE;
}
