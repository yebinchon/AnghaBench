
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int FALSE ;
 int GENERIC_ALL ;
 int InitializeObjectAttributes (int *,int *,int ,scalar_t__,int *) ;
 int OBJ_OPENIF ;
 scalar_t__ STATUS_OBJECT_NAME_EXISTS ;
 int pNtClose (scalar_t__) ;
 scalar_t__ pNtCreateMutant (scalar_t__*,int ,int *,int ) ;
 int pRtlCreateUnicodeStringFromAsciiz (int *,char const*) ;
 int pRtlFreeUnicodeString (int *) ;

__attribute__((used)) static BOOL is_correct_dir( HANDLE dir, const char *name )
{
    NTSTATUS status;
    UNICODE_STRING str;
    OBJECT_ATTRIBUTES attr;
    HANDLE h = 0;

    pRtlCreateUnicodeStringFromAsciiz(&str, name);
    InitializeObjectAttributes(&attr, &str, OBJ_OPENIF, dir, ((void*)0));
    status = pNtCreateMutant(&h, GENERIC_ALL, &attr, FALSE);
    pRtlFreeUnicodeString(&str);
    if (h) pNtClose( h );
    return (status == STATUS_OBJECT_NAME_EXISTS);
}
