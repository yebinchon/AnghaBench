
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int ByteCount; } ;
struct TYPE_4__ {int MappedSystemVa; } ;
typedef int PVOID ;
typedef int * PUINT ;
typedef TYPE_1__* PNDIS_BUFFER ;
typedef TYPE_2__* PMDL ;



VOID XNdisQueryBuffer
(PNDIS_BUFFER Buffer,
 PVOID *VirtualAddress,
 PUINT Length)
{
 if (VirtualAddress != ((void*)0))
     *(PVOID*)VirtualAddress = Buffer->MappedSystemVa;

 *Length = ((PMDL)Buffer)->ByteCount;
}
