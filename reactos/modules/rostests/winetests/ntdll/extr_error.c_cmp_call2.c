
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int NTSTATUS ;


 scalar_t__ ERROR_MR_MID_NOT_FOUND ;
 int ok (int,char*,char const*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ pRtlNtStatusToDosError (int ) ;
 int strict ;

__attribute__((used)) static void cmp_call2(NTSTATUS win_nt, ULONG win32, const char* message)
{
    ULONG err;

    err = pRtlNtStatusToDosError(win_nt);
    ok(err == win32 ||
       (!strict && err == ERROR_MR_MID_NOT_FOUND),
       "%s (%x): got %u, expected %u (or MID_NOT_FOUND)\n",
       message, win_nt, err, win32);
}
