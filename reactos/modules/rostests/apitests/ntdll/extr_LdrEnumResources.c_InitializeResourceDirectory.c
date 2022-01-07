
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef void* USHORT ;
struct TYPE_3__ {void* NumberOfIdEntries; void* NumberOfNamedEntries; scalar_t__ MinorVersion; scalar_t__ MajorVersion; scalar_t__ TimeDateStamp; scalar_t__ Characteristics; } ;
typedef TYPE_1__* PIMAGE_RESOURCE_DIRECTORY ;



__attribute__((used)) static
VOID
InitializeResourceDirectory(
    PIMAGE_RESOURCE_DIRECTORY ResourceDirectory,
    USHORT NumberOfNamedEntries,
    USHORT NumberOfIdEntries)
{
    ResourceDirectory->Characteristics = 0;
    ResourceDirectory->TimeDateStamp = 0;
    ResourceDirectory->MajorVersion = 0;
    ResourceDirectory->MinorVersion = 0;
    ResourceDirectory->NumberOfNamedEntries = NumberOfNamedEntries;
    ResourceDirectory->NumberOfIdEntries = NumberOfIdEntries;
}
