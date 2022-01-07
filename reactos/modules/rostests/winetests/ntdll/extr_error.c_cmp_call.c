
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int NTSTATUS ;


 int ok (int,char*,char const*,int ,int ,int ) ;
 int pRtlNtStatusToDosError (int ) ;

__attribute__((used)) static void cmp_call(NTSTATUS win_nt, ULONG win32, const char* message)
{
    ULONG err;

    err = pRtlNtStatusToDosError(win_nt);
    ok(err == win32,
       "%s (%x): got %u, expected %u\n",
            message, win_nt, err, win32);
}
