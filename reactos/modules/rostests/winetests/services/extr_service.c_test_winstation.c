
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int flags ;
struct TYPE_3__ {int dwFlags; } ;
typedef TYPE_1__ USEROBJECTFLAGS ;
typedef int * HWINSTA ;
typedef int BOOL ;


 int GetLastError () ;
 int * GetProcessWindowStation () ;
 int GetUserObjectInformationA (int *,int ,TYPE_1__*,int,int *) ;
 int UOI_FLAGS ;
 int WSF_VISIBLE ;
 int service_ok (int,char*,...) ;

__attribute__((used)) static void test_winstation(void)
{
    HWINSTA winstation;
    USEROBJECTFLAGS flags;
    BOOL r;

    winstation = GetProcessWindowStation();
    service_ok(winstation != ((void*)0), "winstation = NULL\n");

    r = GetUserObjectInformationA(winstation, UOI_FLAGS, &flags, sizeof(flags), ((void*)0));
    service_ok(r, "GetUserObjectInformation(UOI_NAME) failed: %u\n", GetLastError());
    service_ok(!(flags.dwFlags & WSF_VISIBLE), "winstation has flags %x\n", flags.dwFlags);
}
