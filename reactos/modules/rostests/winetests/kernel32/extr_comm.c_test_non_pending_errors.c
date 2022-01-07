
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ByteSize; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_1__ DCB ;


 int CE_MODE ;
 int ClearCommError (scalar_t__,int*,int *) ;
 int CloseHandle (scalar_t__) ;
 int FALSE ;
 int GetCommState (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetCommState (scalar_t__,TYPE_1__*) ;
 int ok (int,char*,...) ;
 scalar_t__ test_OpenComm (int ) ;

__attribute__((used)) static void test_non_pending_errors(void)
{
    HANDLE hcom;
    DCB dcb;
    DWORD err;

    hcom = test_OpenComm(FALSE);
    if (hcom == INVALID_HANDLE_VALUE) return;

    ok(GetCommState(hcom, &dcb), "GetCommState failed\n");
    dcb.ByteSize = 255;
    ok(!SetCommState(hcom, &dcb), "SetCommState should have failed\n");
    ok(ClearCommError(hcom, &err, ((void*)0)), "ClearCommError should succeed\n");
    ok(!(err & CE_MODE), "ClearCommError shouldn't set CE_MODE byte in this case (%x)\n", err);

    CloseHandle(hcom);
}
