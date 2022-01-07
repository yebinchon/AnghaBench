
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct assembly_identity {int public_key; int name; int arch; } ;
struct actctx_loader {int dummy; } ;
typedef int manifest_dirW ;
typedef int attr ;
typedef char WCHAR ;
struct TYPE_11__ {int Length; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_14__ {char* NtSystemRoot; } ;
struct TYPE_13__ {int Status; } ;
struct TYPE_12__ {int Length; int * SecurityQualityOfService; int * SecurityDescriptor; TYPE_1__* ObjectName; int Attributes; scalar_t__ RootDirectory; } ;
typedef TYPE_2__ OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef TYPE_3__ IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int FILE_DIRECTORY_FILE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int GENERIC_READ ;
 int NtClose (int ) ;
 int NtOpenFile (int *,int,TYPE_2__*,TYPE_3__*,int,int) ;
 int OBJ_CASE_INSENSITIVE ;
 char* RtlAllocateHeap (int ,int ,int) ;
 int RtlDosPathNameToNtPathName_U (char*,TYPE_1__*,int *,int *) ;
 int RtlFreeHeap (int ,int ,char*) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int RtlGetProcessHeap () ;
 int RtlInitUnicodeString (TYPE_1__*,char*) ;
 char* RtlReAllocateHeap (int ,int ,int ,int) ;
 int STATUS_NO_MEMORY ;
 int STATUS_NO_SUCH_FILE ;
 int SYNCHRONIZE ;
 TYPE_5__* SharedUserData ;
 int TRUE ;
 int get_manifest_in_manifest_file (struct actctx_loader*,struct assembly_identity*,int ,char*,int ,int ) ;
 char* lookup_manifest_file (int ,struct assembly_identity*) ;
 int memcpy (char*,char const*,int) ;
 int open_nt_file (int *,TYPE_1__*) ;
 int strcpyW (char*,char*) ;
 int strlenW (char*) ;
 scalar_t__* strrchrW (char*,char) ;

__attribute__((used)) static NTSTATUS lookup_winsxs(struct actctx_loader* acl, struct assembly_identity* ai)
{
    struct assembly_identity sxs_ai;
    UNICODE_STRING path_us;
    OBJECT_ATTRIBUTES attr;
    IO_STATUS_BLOCK io;
    WCHAR *path, *file = ((void*)0);
    HANDLE handle;

    static const WCHAR manifest_dirW[] =
        {'\\','w','i','n','s','x','s','\\','m','a','n','i','f','e','s','t','s',0};

    if (!ai->arch || !ai->name || !ai->public_key) return STATUS_NO_SUCH_FILE;

    if (!(path = RtlAllocateHeap( RtlGetProcessHeap(), 0,
                                  ((strlenW(SharedUserData->NtSystemRoot) + 1) *sizeof(WCHAR)) + sizeof(manifest_dirW) )))
        return STATUS_NO_MEMORY;

    memcpy( path, SharedUserData->NtSystemRoot, strlenW(SharedUserData->NtSystemRoot) * sizeof(WCHAR) );
    memcpy( path + strlenW(SharedUserData->NtSystemRoot), manifest_dirW, sizeof(manifest_dirW) );

    if (!RtlDosPathNameToNtPathName_U( path, &path_us, ((void*)0), ((void*)0) ))
    {
        RtlFreeHeap( RtlGetProcessHeap(), 0, path );
        return STATUS_NO_SUCH_FILE;
    }
    RtlFreeHeap( RtlGetProcessHeap(), 0, path );

    attr.Length = sizeof(attr);
    attr.RootDirectory = 0;
    attr.Attributes = OBJ_CASE_INSENSITIVE;
    attr.ObjectName = &path_us;
    attr.SecurityDescriptor = ((void*)0);
    attr.SecurityQualityOfService = ((void*)0);

    if (!NtOpenFile( &handle, GENERIC_READ | SYNCHRONIZE, &attr, &io, FILE_SHARE_READ | FILE_SHARE_WRITE,
                     FILE_DIRECTORY_FILE | FILE_SYNCHRONOUS_IO_NONALERT ))
    {
        sxs_ai = *ai;
        file = lookup_manifest_file( handle, &sxs_ai );
        NtClose( handle );
    }
    if (!file)
    {
        RtlFreeUnicodeString( &path_us );
        return STATUS_NO_SUCH_FILE;
    }


    if (!(path = RtlReAllocateHeap( RtlGetProcessHeap(), 0, path_us.Buffer,
                                    path_us.Length + (strlenW(file) + 2) * sizeof(WCHAR) )))
    {
        RtlFreeHeap( RtlGetProcessHeap(), 0, file );
        RtlFreeUnicodeString( &path_us );
        return STATUS_NO_MEMORY;
    }

    path[path_us.Length/sizeof(WCHAR)] = '\\';
    strcpyW( path + path_us.Length/sizeof(WCHAR) + 1, file );
    RtlInitUnicodeString( &path_us, path );
    *strrchrW(file, '.') = 0;

    if (!open_nt_file( &handle, &path_us ))
    {
        io.Status = get_manifest_in_manifest_file(acl, &sxs_ai, path_us.Buffer, file, TRUE, handle);
        NtClose( handle );
    }
    else io.Status = STATUS_NO_SUCH_FILE;

    RtlFreeHeap( RtlGetProcessHeap(), 0, file );
    RtlFreeUnicodeString( &path_us );
    return io.Status;
}
