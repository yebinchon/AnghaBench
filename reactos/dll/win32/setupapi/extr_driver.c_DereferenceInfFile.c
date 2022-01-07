
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct InfFileDetails {int hInf; int References; } ;
typedef int VOID ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct InfFileDetails*) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int SetupCloseInfFile (int ) ;

VOID
DereferenceInfFile(struct InfFileDetails* infFile)
{
    if (InterlockedDecrement(&infFile->References) == 0)
    {
        SetupCloseInfFile(infFile->hInf);
        HeapFree(GetProcessHeap(), 0, infFile);
    }
}
