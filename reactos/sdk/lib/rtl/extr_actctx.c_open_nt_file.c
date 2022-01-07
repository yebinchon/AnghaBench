
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int attr ;
typedef int UNICODE_STRING ;
struct TYPE_3__ {int Length; int * SecurityQualityOfService; int * SecurityDescriptor; int * ObjectName; int Attributes; scalar_t__ RootDirectory; } ;
typedef TYPE_1__ OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int FILE_SHARE_READ ;
 int FILE_SYNCHRONOUS_IO_ALERT ;
 int GENERIC_READ ;
 int NtOpenFile (int *,int,TYPE_1__*,int *,int ,int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int SYNCHRONIZE ;

__attribute__((used)) static NTSTATUS open_nt_file( HANDLE *handle, UNICODE_STRING *name )
{
    OBJECT_ATTRIBUTES attr;
    IO_STATUS_BLOCK io;

    attr.Length = sizeof(attr);
    attr.RootDirectory = 0;
    attr.Attributes = OBJ_CASE_INSENSITIVE;
    attr.ObjectName = name;
    attr.SecurityDescriptor = ((void*)0);
    attr.SecurityQualityOfService = ((void*)0);
    return NtOpenFile( handle, GENERIC_READ | SYNCHRONIZE, &attr, &io, FILE_SHARE_READ, FILE_SYNCHRONOUS_IO_ALERT );
}
