#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int varflags; int nrtypeinfos; } ;
struct TYPE_12__ {TYPE_5__* typelib; TYPE_4__ typelib_segdir; TYPE_4__ typelib_header; TYPE_4__* typelib_typeinfo_offsets; TYPE_4__ help_string_dll_offset; } ;
typedef  TYPE_1__ msft_typelib_t ;
struct TYPE_13__ {int cval; } ;
typedef  TYPE_2__ expr_t ;
struct TYPE_15__ {int /*<<< orphan*/  attrs; } ;
typedef  int /*<<< orphan*/  MSFT_SegDir ;
typedef  int /*<<< orphan*/  MSFT_Header ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ID ; 
 int /*<<< orphan*/  MSFT_SEG_ARRAYDESC ; 
 int /*<<< orphan*/  MSFT_SEG_CUSTDATA ; 
 int /*<<< orphan*/  MSFT_SEG_CUSTDATAGUID ; 
 int /*<<< orphan*/  MSFT_SEG_GUID ; 
 int /*<<< orphan*/  MSFT_SEG_GUIDHASH ; 
 int /*<<< orphan*/  MSFT_SEG_IMPORTFILES ; 
 int /*<<< orphan*/  MSFT_SEG_IMPORTINFO ; 
 int /*<<< orphan*/  MSFT_SEG_NAME ; 
 int /*<<< orphan*/  MSFT_SEG_NAMEHASH ; 
 int /*<<< orphan*/  MSFT_SEG_REFERENCES ; 
 int /*<<< orphan*/  MSFT_SEG_STRING ; 
 int /*<<< orphan*/  MSFT_SEG_TYPEDESC ; 
 int /*<<< orphan*/  MSFT_SEG_TYPEINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ byte_swapped ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  typelib_name ; 

__attribute__((used)) static void FUNC14(msft_typelib_t *typelib)
{
    int filepos;

    FUNC1("save_all_changes(%p)\n", typelib);

    filepos = sizeof(MSFT_Header) + sizeof(MSFT_SegDir);
    if(typelib->typelib_header.varflags & 0x100) filepos += 4; /* helpstringdll */
    filepos += typelib->typelib_header.nrtypeinfos * 4;

    filepos += FUNC2(typelib, filepos, MSFT_SEG_TYPEINFO);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_GUIDHASH);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_GUID);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_REFERENCES);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_IMPORTINFO);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_IMPORTFILES);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_NAMEHASH);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_NAME);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_STRING);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_TYPEDESC);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_ARRAYDESC);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_CUSTDATA);
    filepos += FUNC2(typelib, filepos, MSFT_SEG_CUSTDATAGUID);

    FUNC3(typelib, filepos);

    byte_swapped = 0;
    FUNC9();

    FUNC11(&typelib->typelib_header, sizeof(typelib->typelib_header));
    if(typelib->typelib_header.varflags & 0x100)
        FUNC11(&typelib->help_string_dll_offset, sizeof(typelib->help_string_dll_offset));

    FUNC11(typelib->typelib_typeinfo_offsets, typelib->typelib_header.nrtypeinfos * 4);
    FUNC11(&typelib->typelib_segdir, sizeof(typelib->typelib_segdir));
    FUNC4( typelib, MSFT_SEG_TYPEINFO );
    FUNC4( typelib, MSFT_SEG_GUIDHASH );
    FUNC4( typelib, MSFT_SEG_GUID );
    FUNC4( typelib, MSFT_SEG_REFERENCES );
    FUNC4( typelib, MSFT_SEG_IMPORTINFO );
    FUNC4( typelib, MSFT_SEG_IMPORTFILES );
    FUNC4( typelib, MSFT_SEG_NAMEHASH );
    FUNC4( typelib, MSFT_SEG_NAME );
    FUNC4( typelib, MSFT_SEG_STRING );
    FUNC4( typelib, MSFT_SEG_TYPEDESC );
    FUNC4( typelib, MSFT_SEG_ARRAYDESC );
    FUNC4( typelib, MSFT_SEG_CUSTDATA );
    FUNC4( typelib, MSFT_SEG_CUSTDATAGUID );

    FUNC5(typelib);

    if (FUNC13( typelib_name, ".res" ))  /* create a binary resource file */
    {
        char typelib_id[13] = "#1";

        expr_t *expr = FUNC8( typelib->typelib->attrs, ATTR_ID );
        if (expr)
            FUNC12( typelib_id, "#%d", expr->cval );
        FUNC0( "TYPELIB", typelib_id );
        FUNC10( typelib->typelib );
#ifdef __REACTOS__
        flush_output_resources( typelib_name );
#endif
    }
    else FUNC6( typelib_name );
}