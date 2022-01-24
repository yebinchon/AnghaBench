#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct assembly_identity {int dummy; } ;
struct actctx_loader {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  attr ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
struct TYPE_12__ {TYPE_1__ EndOfFile; } ;
struct TYPE_11__ {scalar_t__ QuadPart; } ;
struct TYPE_10__ {int Length; int Attributes; int /*<<< orphan*/ * SecurityQualityOfService; int /*<<< orphan*/ * SecurityDescriptor; int /*<<< orphan*/ * ObjectName; scalar_t__ RootDirectory; } ;
typedef  scalar_t__ SIZE_T ;
typedef  TYPE_2__ OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_4__ FILE_STANDARD_INFORMATION ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FileStandardInformation ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int OBJ_CASE_INSENSITIVE ; 
 int OBJ_OPENIF ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int SECTION_MAP_READ ; 
 int SECTION_QUERY ; 
 int /*<<< orphan*/  SEC_COMMIT ; 
 int STANDARD_RIGHTS_REQUIRED ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  ViewShare ; 
 scalar_t__ FUNC7 (struct actctx_loader*,struct assembly_identity*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,scalar_t__) ; 

__attribute__((used)) static NTSTATUS FUNC8( struct actctx_loader* acl, struct assembly_identity* ai,
                                               LPCWSTR filename, LPCWSTR directory, BOOL shared, HANDLE file )
{
    FILE_STANDARD_INFORMATION info;
    IO_STATUS_BLOCK io;
    HANDLE              mapping;
    OBJECT_ATTRIBUTES   attr;
    LARGE_INTEGER       size;
    LARGE_INTEGER       offset;
    NTSTATUS            status;
    SIZE_T              count;
    void               *base;

    FUNC0( "loading manifest file %S\n", filename );

    attr.Length                   = sizeof(attr);
    attr.RootDirectory            = 0;
    attr.ObjectName               = NULL;
    attr.Attributes               = OBJ_CASE_INSENSITIVE | OBJ_OPENIF;
    attr.SecurityDescriptor       = NULL;
    attr.SecurityQualityOfService = NULL;

    size.QuadPart = 0;
    status = FUNC2( &mapping, STANDARD_RIGHTS_REQUIRED | SECTION_QUERY | SECTION_MAP_READ,
                              &attr, &size, PAGE_READONLY, SEC_COMMIT, file );

    if (status != STATUS_SUCCESS) return status;

    offset.QuadPart = 0;
    count = 0;
    base = NULL;
    status = FUNC4( mapping, FUNC3(), &base, 0, 0, &offset,
                                 &count, ViewShare, 0, PAGE_READONLY );
    FUNC1( mapping );
    if (status != STATUS_SUCCESS) return status;

    /* Fixme: WINE uses FileEndOfFileInformation with NtQueryInformationFile. */
    status = FUNC5( file, &io, &info, sizeof(info), FileStandardInformation);

    if (status == STATUS_SUCCESS)
        status = FUNC7(acl, ai, filename, directory, shared, base, (SIZE_T)info.EndOfFile.QuadPart);

    FUNC6( FUNC3(), base );
    return status;
}