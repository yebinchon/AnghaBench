
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct InfFileDetails {int References; } ;
typedef int VOID ;


 int InterlockedIncrement (int *) ;

__attribute__((used)) static VOID
ReferenceInfFile(struct InfFileDetails* infFile)
{
    InterlockedIncrement(&infFile->References);
}
