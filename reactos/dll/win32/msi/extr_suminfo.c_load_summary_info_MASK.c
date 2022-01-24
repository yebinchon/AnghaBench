#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_17__ {int /*<<< orphan*/  property; } ;
struct TYPE_16__ {int wByteOrder; size_t cbSection; int /*<<< orphan*/  cProperties; int /*<<< orphan*/  dwOffset; int /*<<< orphan*/  fmtid; } ;
typedef  TYPE_1__ PROPERTYSETHEADER ;
typedef  TYPE_1__ PROPERTYSECTIONHEADER ;
typedef  TYPE_3__ MSISUMMARYINFO ;
typedef  TYPE_1__* LPBYTE ;
typedef  TYPE_5__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ FORMATIDOFFSET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,...) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FMTID_SummaryInformation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_5__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSI_MAX_PROPS ; 
 size_t SECT_HDR_SIZE ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,size_t) ; 
 TYPE_1__* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 

__attribute__((used)) static UINT FUNC11( MSISUMMARYINFO *si, IStream *stm )
{
    PROPERTYSETHEADER set_hdr;
    FORMATIDOFFSET format_hdr;
    PROPERTYSECTIONHEADER section_hdr;
    LPBYTE data = NULL;
    LARGE_INTEGER ofs;
    ULONG count, sz;
    HRESULT r;

    FUNC6("%p %p\n", si, stm);

    /* read the header */
    sz = sizeof set_hdr;
    r = FUNC2( stm, &set_hdr, sz, &count );
    if( FUNC1(r) || count != sz )
        return ERROR_FUNCTION_FAILED;

    if( set_hdr.wByteOrder != 0xfffe )
    {
        FUNC0("property set not big-endian %04X\n", set_hdr.wByteOrder);
        return ERROR_FUNCTION_FAILED;
    }

    sz = sizeof format_hdr;
    r = FUNC2( stm, &format_hdr, sz, &count );
    if( FUNC1(r) || count != sz )
        return ERROR_FUNCTION_FAILED;

    /* check the format id is correct */
    if( !FUNC4( &FMTID_SummaryInformation, &format_hdr.fmtid ) )
        return ERROR_FUNCTION_FAILED;

    /* seek to the location of the section */
    ofs.QuadPart = format_hdr.dwOffset;
    r = FUNC3( stm, ofs, STREAM_SEEK_SET, NULL );
    if( FUNC1(r) )
        return ERROR_FUNCTION_FAILED;

    /* read the section itself */
    sz = SECT_HDR_SIZE;
    r = FUNC2( stm, &section_hdr, sz, &count );
    if( FUNC1(r) || count != sz )
        return ERROR_FUNCTION_FAILED;

    if( section_hdr.cProperties > MSI_MAX_PROPS )
    {
        FUNC0("too many properties %d\n", section_hdr.cProperties);
        return ERROR_FUNCTION_FAILED;
    }

    data = FUNC8( section_hdr.cbSection);
    if( !data )
        return ERROR_FUNCTION_FAILED;

    FUNC7( data, &section_hdr, SECT_HDR_SIZE );

    /* read all the data in one go */
    sz = section_hdr.cbSection - SECT_HDR_SIZE;
    r = FUNC2( stm, &data[ SECT_HDR_SIZE ], sz, &count );
    if( FUNC5(r) && count == sz )
        FUNC10( si->property, data, sz + SECT_HDR_SIZE );
    else
        FUNC0("failed to read properties %d %d\n", count, sz);

    FUNC9( data );
    return ERROR_SUCCESS;
}