#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct assembly_identity {int dummy; } ;
struct actctx_loader {int dummy; } ;
typedef  int /*<<< orphan*/  attr ;
typedef  char WCHAR ;
typedef  int ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {int Length; int Attributes; int /*<<< orphan*/ * SecurityQualityOfService; int /*<<< orphan*/ * SecurityDescriptor; int /*<<< orphan*/ * ObjectName; scalar_t__ RootDirectory; } ;
typedef  scalar_t__ SIZE_T ;
typedef  TYPE_1__ OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  char* LPCWSTR ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int OBJ_CASE_INSENSITIVE ; 
 int OBJ_OPENIF ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (void*) ; 
 int SECTION_MAP_READ ; 
 int SECTION_QUERY ; 
 int /*<<< orphan*/  SEC_COMMIT ; 
 int STANDARD_RIGHTS_REQUIRED ; 
 scalar_t__ STATUS_INVALID_IMAGE_FORMAT ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  ViewShare ; 
 scalar_t__ FUNC8 (struct actctx_loader*,struct assembly_identity*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct actctx_loader*,struct assembly_identity*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS FUNC11( struct actctx_loader* acl, struct assembly_identity* ai,
                                         LPCWSTR filename, LPCWSTR directory, BOOL shared,
                                         HANDLE file, LPCWSTR resname, ULONG lang )
{
    HANDLE              mapping;
    OBJECT_ATTRIBUTES   attr;
    LARGE_INTEGER       size;
    LARGE_INTEGER       offset;
    NTSTATUS            status;
    SIZE_T              count;
    void               *base;
    WCHAR resnameBuf[20];
    LPCWSTR resptr = resname;

    if ((!((ULONG_PTR)resname >> 16)))
    {
        FUNC10(resnameBuf, L"#%u", FUNC6(resname));
        resptr = resnameBuf;
    }

    FUNC0( "looking for res %S in %S\n", resptr, filename ? filename : L"<NULL>");

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

    if (FUNC7(base)) /* we got a PE file */
    {
        HANDLE module = (HMODULE)((ULONG_PTR)base | 1);  /* make it a LOAD_LIBRARY_AS_DATAFILE handle */
        if (resname)
            status = FUNC8( acl, ai, filename, directory, shared, module, resname, lang );
        else
            status = FUNC9(acl, ai, filename, directory, shared, module, lang);
    }
    else status = STATUS_INVALID_IMAGE_FORMAT;

    FUNC5( FUNC3(), base );
    return status;
}