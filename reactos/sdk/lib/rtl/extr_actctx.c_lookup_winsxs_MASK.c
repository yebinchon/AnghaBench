#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct assembly_identity {int /*<<< orphan*/  public_key; int /*<<< orphan*/  name; int /*<<< orphan*/  arch; } ;
struct actctx_loader {int dummy; } ;
typedef  int /*<<< orphan*/  manifest_dirW ;
typedef  int /*<<< orphan*/  attr ;
typedef  char WCHAR ;
struct TYPE_11__ {int Length; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_14__ {char* NtSystemRoot; } ;
struct TYPE_13__ {int /*<<< orphan*/  Status; } ;
struct TYPE_12__ {int Length; int /*<<< orphan*/ * SecurityQualityOfService; int /*<<< orphan*/ * SecurityDescriptor; TYPE_1__* ObjectName; int /*<<< orphan*/  Attributes; scalar_t__ RootDirectory; } ;
typedef  TYPE_2__ OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_3__ IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int FILE_DIRECTORY_FILE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int FILE_SYNCHRONOUS_IO_NONALERT ; 
 int GENERIC_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,TYPE_2__*,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_NO_SUCH_FILE ; 
 int SYNCHRONIZE ; 
 TYPE_5__* SharedUserData ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (struct actctx_loader*,struct assembly_identity*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ,struct assembly_identity*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int FUNC14 (char*) ; 
 scalar_t__* FUNC15 (char*,char) ; 

__attribute__((used)) static NTSTATUS FUNC16(struct actctx_loader* acl, struct assembly_identity* ai)
{
    struct assembly_identity    sxs_ai;
    UNICODE_STRING              path_us;
    OBJECT_ATTRIBUTES           attr;
    IO_STATUS_BLOCK             io;
    WCHAR *path, *file = NULL;
    HANDLE handle;

    static const WCHAR manifest_dirW[] =
        {'\\','w','i','n','s','x','s','\\','m','a','n','i','f','e','s','t','s',0};

    if (!ai->arch || !ai->name || !ai->public_key) return STATUS_NO_SUCH_FILE;

    if (!(path = FUNC2( FUNC6(), 0,
                                  ((FUNC14(SharedUserData->NtSystemRoot) + 1) *sizeof(WCHAR)) + sizeof(manifest_dirW) )))
        return STATUS_NO_MEMORY;

    FUNC11( path, SharedUserData->NtSystemRoot, FUNC14(SharedUserData->NtSystemRoot) * sizeof(WCHAR) );
    FUNC11( path + FUNC14(SharedUserData->NtSystemRoot), manifest_dirW, sizeof(manifest_dirW) );

    if (!FUNC3( path, &path_us, NULL, NULL ))
    {
        FUNC4( FUNC6(), 0, path );
        return STATUS_NO_SUCH_FILE;
    }
    FUNC4( FUNC6(), 0, path );

    attr.Length = sizeof(attr);
    attr.RootDirectory = 0;
    attr.Attributes = OBJ_CASE_INSENSITIVE;
    attr.ObjectName = &path_us;
    attr.SecurityDescriptor = NULL;
    attr.SecurityQualityOfService = NULL;

    if (!FUNC1( &handle, GENERIC_READ | SYNCHRONIZE, &attr, &io, FILE_SHARE_READ | FILE_SHARE_WRITE,
                     FILE_DIRECTORY_FILE | FILE_SYNCHRONOUS_IO_NONALERT ))
    {
        sxs_ai = *ai;
        file = FUNC10( handle, &sxs_ai );
        FUNC0( handle );
    }
    if (!file)
    {
        FUNC5( &path_us );
        return STATUS_NO_SUCH_FILE;
    }

    /* append file name to directory path */
    if (!(path = FUNC8( FUNC6(), 0, path_us.Buffer,
                                    path_us.Length + (FUNC14(file) + 2) * sizeof(WCHAR) )))
    {
        FUNC4( FUNC6(), 0, file );
        FUNC5( &path_us );
        return STATUS_NO_MEMORY;
    }

    path[path_us.Length/sizeof(WCHAR)] = '\\';
    FUNC13( path + path_us.Length/sizeof(WCHAR) + 1, file );
    FUNC7( &path_us, path );
    *FUNC15(file, '.') = 0;  /* remove .manifest extension */

    if (!FUNC12( &handle, &path_us ))
    {
        io.Status = FUNC9(acl, &sxs_ai, path_us.Buffer, file, TRUE, handle);
        FUNC0( handle );
    }
    else io.Status = STATUS_NO_SUCH_FILE;

    FUNC4( FUNC6(), 0, file );
    FUNC5( &path_us );
    return io.Status;
}