
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;
typedef int ANSI_STRING ;


 int TRUE ;
 int ok (int,char*,...) ;
 int pRtlAnsiStringToUnicodeString (TYPE_1__*,int *,int ) ;
 int pRtlDosPathNameToNtPathName_U (int ,TYPE_1__*,int *,int *) ;
 int pRtlFreeUnicodeString (TYPE_1__*) ;
 int pRtlInitAnsiString (int *,char const*) ;

__attribute__((used)) static void get_nt_pathW(const char *name, UNICODE_STRING *nameW)
{
    UNICODE_STRING strW;
    ANSI_STRING str;
    NTSTATUS status;
    BOOLEAN ret;

    pRtlInitAnsiString(&str, name);

    status = pRtlAnsiStringToUnicodeString(&strW, &str, TRUE);
    ok(!status, "RtlAnsiStringToUnicodeString failed with %08x\n", status);

    ret = pRtlDosPathNameToNtPathName_U(strW.Buffer, nameW, ((void*)0), ((void*)0));
    ok(ret, "RtlDosPathNameToNtPathName_U failed\n");

    pRtlFreeUnicodeString(&strW);
}
