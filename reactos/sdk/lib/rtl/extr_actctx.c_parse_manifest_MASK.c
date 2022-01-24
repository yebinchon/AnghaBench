#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ptr; int /*<<< orphan*/ * end; } ;
typedef  TYPE_2__ xmlbuf_t ;
struct assembly_identity {int dummy; } ;
struct TYPE_4__ {void* info; int /*<<< orphan*/  type; } ;
struct assembly {TYPE_1__ manifest; void* directory; } ;
struct actctx_loader {int /*<<< orphan*/  actctx; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LPCWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVATION_CONTEXT_PATH_TYPE_NONE ; 
 int /*<<< orphan*/  ACTIVATION_CONTEXT_PATH_TYPE_WIN32_FILE ; 
 int /*<<< orphan*/  ASSEMBLY_MANIFEST ; 
 int /*<<< orphan*/  ASSEMBLY_SHARED_MANIFEST ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int IS_TEXT_UNICODE_REVERSE_SIGNATURE ; 
 int IS_TEXT_UNICODE_SIGNATURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (void const*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int*,void const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,void const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_SXS_CANT_GEN_ACTCTX ; 
 struct assembly* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct actctx_loader*,struct assembly*,struct assembly_identity*,TYPE_2__*) ; 
 void* FUNC12 (scalar_t__) ; 

__attribute__((used)) static NTSTATUS FUNC13( struct actctx_loader* acl, struct assembly_identity* ai,
                                LPCWSTR filename, LPCWSTR directory, BOOL shared,
                                const void *buffer, SIZE_T size )
{
    xmlbuf_t xmlbuf;
    NTSTATUS status;
    struct assembly *assembly;
    int unicode_tests;

    FUNC0( "parsing manifest loaded from %S base dir %S\n", filename, directory );

    if (!(assembly = FUNC10(acl->actctx, shared ? ASSEMBLY_SHARED_MANIFEST : ASSEMBLY_MANIFEST)))
        return STATUS_SXS_CANT_GEN_ACTCTX;

    if (directory && !(assembly->directory = FUNC12(directory)))
        return STATUS_NO_MEMORY;

    if (filename) assembly->manifest.info = FUNC12( filename + 4 /* skip \??\ prefix */ );
    assembly->manifest.type = assembly->manifest.info ? ACTIVATION_CONTEXT_PATH_TYPE_WIN32_FILE
                                                      : ACTIVATION_CONTEXT_PATH_TYPE_NONE;

    unicode_tests = IS_TEXT_UNICODE_SIGNATURE | IS_TEXT_UNICODE_REVERSE_SIGNATURE;
    if (FUNC6(buffer, size, &unicode_tests ))
    {
        xmlbuf.ptr = buffer;
        xmlbuf.end = xmlbuf.ptr + size / sizeof(WCHAR);
        status = FUNC11( acl, assembly, ai, &xmlbuf );
    }
    else if (unicode_tests & IS_TEXT_UNICODE_REVERSE_SIGNATURE)
    {
        const WCHAR *buf = buffer;
        WCHAR *new_buff;
        unsigned int i;

        if (!(new_buff = FUNC3( FUNC5(), 0, size )))
            return STATUS_NO_MEMORY;
        for (i = 0; i < size / sizeof(WCHAR); i++)
            new_buff[i] = FUNC9( buf[i] );
        xmlbuf.ptr = new_buff;
        xmlbuf.end = xmlbuf.ptr + size / sizeof(WCHAR);
        status = FUNC11( acl, assembly, ai, &xmlbuf );
        FUNC4( FUNC5(), 0, new_buff );
    }
    else
    {
        /* TODO: this doesn't handle arbitrary encodings */
        WCHAR *new_buff;
        ULONG sizeU;

        status = FUNC8(&sizeU, buffer, size);
        if (!FUNC2(status))
        {
            FUNC1("RtlMultiByteToUnicodeSize failed with %lx\n", status);
            return STATUS_SXS_CANT_GEN_ACTCTX;
        }

        new_buff = FUNC3(FUNC5(), 0, sizeU);
        if (!new_buff)
            return STATUS_NO_MEMORY;

        status = FUNC7(new_buff, sizeU, &sizeU, buffer, size);
        if (!FUNC2(status))
        {
            FUNC1("RtlMultiByteToUnicodeN failed with %lx\n", status);
            return STATUS_SXS_CANT_GEN_ACTCTX;
        }

        xmlbuf.ptr = new_buff;
        xmlbuf.end = xmlbuf.ptr + sizeU / sizeof(WCHAR);
        status = FUNC11(acl, assembly, ai, &xmlbuf);
        FUNC4(FUNC5(), 0, new_buff);
    }
    return status;
}