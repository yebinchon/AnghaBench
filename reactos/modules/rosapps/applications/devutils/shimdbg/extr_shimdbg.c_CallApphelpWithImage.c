
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Buffer; int member_0; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_7__ {scalar_t__ ImageHandle; int ImageName; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_2__ APPHELP_CACHE_SERVICE_LOOKUP ;
typedef int APPHELPCACHESERVICECLASS ;


 int CallApphelp (int ,TYPE_2__*) ;
 scalar_t__ MapFile (char*,TYPE_1__*,int) ;
 int NtClose (scalar_t__) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int RtlInitUnicodeString (int *,int ) ;
 int xprintf (char*,char*,char*) ;

void CallApphelpWithImage(char* filename, int MapIt,
                        APPHELPCACHESERVICECLASS Service, char* ServiceName)
{
    UNICODE_STRING PathName = {0};
    APPHELP_CACHE_SERVICE_LOOKUP CacheEntry;

    HANDLE FileHandle = MapFile(filename, &PathName, MapIt);

    xprintf("Calling %s %s mapping\n", ServiceName, (MapIt ? "with" : "without"));

    RtlInitUnicodeString(&CacheEntry.ImageName, PathName.Buffer);
    CacheEntry.ImageHandle = FileHandle ? FileHandle : (HANDLE)-1;
    CallApphelp(Service, &CacheEntry);



    if (FileHandle)
        NtClose(FileHandle);
    RtlFreeUnicodeString(&PathName);
}
