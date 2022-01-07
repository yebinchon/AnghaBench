
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DriverInfoElement {struct DriverInfoElement* MatchingId; int InfFileDetails; } ;
typedef int BOOL ;


 int DereferenceInfFile (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct DriverInfoElement*) ;
 int TRUE ;

BOOL
DestroyDriverInfoElement(struct DriverInfoElement* driverInfo)
{
    DereferenceInfFile(driverInfo->InfFileDetails);
    HeapFree(GetProcessHeap(), 0, driverInfo->MatchingId);
    HeapFree(GetProcessHeap(), 0, driverInfo);
    return TRUE;
}
