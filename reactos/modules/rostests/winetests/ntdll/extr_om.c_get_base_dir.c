
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_4__ {TYPE_1__* Peb; } ;
struct TYPE_3__ {int SessionId; } ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ HANDLE ;


 scalar_t__ CreateMutexA (int *,int ,char const*) ;
 int DIRECTORY_QUERY ;
 int FALSE ;
 int GetLastError () ;
 int InitializeObjectAttributes (int *,int *,int ,int ,int *) ;
 TYPE_2__* NtCurrentTeb () ;
 int OBJ_OPENIF ;
 scalar_t__ is_correct_dir (scalar_t__,char const*) ;
 int ok (int,char*,scalar_t__,int ) ;
 int pNtClose (scalar_t__) ;
 scalar_t__ pNtOpenDirectoryObject (scalar_t__*,int ,int *) ;
 int pRtlCreateUnicodeStringFromAsciiz (int *,char*) ;
 int pRtlFreeUnicodeString (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static HANDLE get_base_dir(void)
{
    static const char objname[] = "om.c_get_base_dir_obj";
    NTSTATUS status;
    UNICODE_STRING str;
    OBJECT_ATTRIBUTES attr;
    HANDLE dir, h;
    char name[40];

    h = CreateMutexA(((void*)0), FALSE, objname);
    ok(h != 0, "CreateMutexA failed got ret=%p (%d)\n", h, GetLastError());
    InitializeObjectAttributes(&attr, &str, OBJ_OPENIF, 0, ((void*)0));

    sprintf( name, "\\BaseNamedObjects\\Session\\%u", NtCurrentTeb()->Peb->SessionId );
    pRtlCreateUnicodeStringFromAsciiz(&str, name );
    status = pNtOpenDirectoryObject(&dir, DIRECTORY_QUERY, &attr);
    pRtlFreeUnicodeString(&str);
    if (!status && is_correct_dir( dir, objname )) goto done;
    if (!status) pNtClose( dir );

    pRtlCreateUnicodeStringFromAsciiz(&str, "\\BaseNamedObjects");
    status = pNtOpenDirectoryObject(&dir, DIRECTORY_QUERY, &attr);
    pRtlFreeUnicodeString(&str);
    if (!status && is_correct_dir( dir, objname )) goto done;
    if (!status) pNtClose( dir );

    dir = 0;

done:
    pNtClose( h );
    return dir;
}
