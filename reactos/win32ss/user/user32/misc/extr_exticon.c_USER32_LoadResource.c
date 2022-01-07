
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int ULONG ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ length; } ;
typedef TYPE_1__ NE_NAMEINFO ;
typedef int * LPBYTE ;
typedef int DWORD ;
typedef int BYTE ;


 int TRACE (char*,int *,TYPE_1__*,int) ;

__attribute__((used)) static BYTE * USER32_LoadResource( LPBYTE peimage, NE_NAMEINFO* pNInfo, WORD sizeShift, ULONG *uSize)
{
 TRACE("%p %p 0x%08x\n", peimage, pNInfo, sizeShift);

 *uSize = (DWORD)pNInfo->length << sizeShift;
 return peimage + ((DWORD)pNInfo->offset << sizeShift);
}
