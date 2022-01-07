
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int NTSTATUS ;


 int ok (int,char*,char const*,int ,int ,int ,int ) ;
 int pRtlNtStatusToDosError (int ) ;
 int strict ;

__attribute__((used)) static void cmp_call3(NTSTATUS win_nt, ULONG win32_1, ULONG win32_2, const char* message)
{
    ULONG err;

    err = pRtlNtStatusToDosError(win_nt);
    ok(err == win32_1 || (!strict && err == win32_2),
       "%s (%x): got %u, expected %u or %u\n",
            message, win_nt, err, win32_1, win32_2);
}
