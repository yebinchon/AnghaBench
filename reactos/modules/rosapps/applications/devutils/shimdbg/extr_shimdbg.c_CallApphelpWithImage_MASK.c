#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Buffer; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_7__ {scalar_t__ ImageHandle; int /*<<< orphan*/  ImageName; } ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_2__ APPHELP_CACHE_SERVICE_LOOKUP ;
typedef  int /*<<< orphan*/  APPHELPCACHESERVICECLASS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

void FUNC6(char* filename, int MapIt,
                        APPHELPCACHESERVICECLASS Service, char* ServiceName)
{
    UNICODE_STRING PathName = {0};
    APPHELP_CACHE_SERVICE_LOOKUP CacheEntry;

    HANDLE FileHandle = FUNC1(filename, &PathName, MapIt);

    FUNC5("Calling %s %s mapping\n", ServiceName, (MapIt ? "with" : "without"));

    FUNC4(&CacheEntry.ImageName, PathName.Buffer);
    CacheEntry.ImageHandle = FileHandle ? FileHandle : (HANDLE)-1;
    FUNC0(Service, &CacheEntry);
    // we piggy-back on the PathName, so let the Cleanup take care of the string
    //RtlFreeUnicodeString(&CacheEntry.ImageName);

    if (FileHandle)
        FUNC2(FileHandle);
    FUNC3(&PathName);
}