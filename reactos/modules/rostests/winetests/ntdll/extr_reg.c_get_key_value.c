
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef int attr ;
typedef int UNICODE_STRING ;
struct TYPE_6__ {scalar_t__ Data; } ;
struct TYPE_5__ {int Length; int * SecurityQualityOfService; int * SecurityDescriptor; int * ObjectName; int Attributes; int RootDirectory; } ;
typedef TYPE_1__ OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_2__ KEY_VALUE_PARTIAL_INFORMATION ;
typedef int HANDLE ;
typedef int DWORD ;


 int KEY_ALL_ACCESS ;
 int KeyValuePartialInformation ;
 int OBJ_CASE_INSENSITIVE ;
 scalar_t__ STATUS_OBJECT_NAME_NOT_FOUND ;
 scalar_t__ STATUS_SUCCESS ;
 int ok (int,char*,int,scalar_t__) ;
 int pNtClose (int ) ;
 scalar_t__ pNtCreateKey (int *,int,TYPE_1__*,int ,int ,int ,int ) ;
 scalar_t__ pNtQueryValueKey (int ,int *,int ,TYPE_2__*,int,int*) ;
 int pRtlCreateUnicodeStringFromAsciiz (int *,char const*) ;
 int pRtlFreeUnicodeString (int *) ;
 int value_str ;

__attribute__((used)) static DWORD get_key_value( HANDLE root, const char *name, DWORD flags )
{
    char tmp[32];
    NTSTATUS status;
    OBJECT_ATTRIBUTES attr;
    UNICODE_STRING str;
    HANDLE key;
    KEY_VALUE_PARTIAL_INFORMATION *info = (KEY_VALUE_PARTIAL_INFORMATION *)tmp;
    DWORD dw, len = sizeof(tmp);

    attr.Length = sizeof(attr);
    attr.RootDirectory = root;
    attr.Attributes = OBJ_CASE_INSENSITIVE;
    attr.ObjectName = &str;
    attr.SecurityDescriptor = ((void*)0);
    attr.SecurityQualityOfService = ((void*)0);
    pRtlCreateUnicodeStringFromAsciiz( &str, name );

    status = pNtCreateKey( &key, flags | KEY_ALL_ACCESS, &attr, 0, 0, 0, 0 );
    if (status == STATUS_OBJECT_NAME_NOT_FOUND) return 0;
    ok( status == STATUS_SUCCESS, "%08x: NtCreateKey failed: 0x%08x\n", flags, status );

    status = pNtQueryValueKey( key, &value_str, KeyValuePartialInformation, info, len, &len );
    if (status == STATUS_OBJECT_NAME_NOT_FOUND)
        dw = 0;
    else
    {
        ok( status == STATUS_SUCCESS, "%08x: NtQueryValueKey failed: 0x%08x\n", flags, status );
        dw = *(DWORD *)info->Data;
    }
    pNtClose( key );
    pRtlFreeUnicodeString( &str );
    return dw;
}
