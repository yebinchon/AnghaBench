
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int rdSize; int* rdParm; int rdFunction; } ;
typedef int PHYSDEV ;
typedef TYPE_1__ METARECORD ;
typedef int LPVOID ;
typedef int LPCVOID ;
typedef int INT ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int META_ESCAPE ;
 int MFDRV_WriteRecord (int ,TYPE_1__*,int) ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static INT MFDRV_ExtEscape( PHYSDEV dev, INT nEscape, INT cbInput, LPCVOID in_data,
                            INT cbOutput, LPVOID out_data )
{
    METARECORD *mr;
    DWORD len;
    INT ret;

    if (cbOutput) return 0;

    len = sizeof(*mr) + sizeof(WORD) + ((cbInput + 1) & ~1);
    mr = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, len);
    mr->rdSize = len / 2;
    mr->rdFunction = META_ESCAPE;
    mr->rdParm[0] = nEscape;
    mr->rdParm[1] = cbInput;
    memcpy(&(mr->rdParm[2]), in_data, cbInput);
    ret = MFDRV_WriteRecord( dev, mr, len);
    HeapFree(GetProcessHeap(), 0, mr);
    return ret;
}
