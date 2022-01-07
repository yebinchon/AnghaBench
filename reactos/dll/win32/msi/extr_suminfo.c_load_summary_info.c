
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t ULONG ;
typedef int UINT ;
struct TYPE_18__ {int QuadPart; } ;
struct TYPE_17__ {int property; } ;
struct TYPE_16__ {int wByteOrder; size_t cbSection; int cProperties; int dwOffset; int fmtid; } ;
typedef TYPE_1__ PROPERTYSETHEADER ;
typedef TYPE_1__ PROPERTYSECTIONHEADER ;
typedef TYPE_3__ MSISUMMARYINFO ;
typedef TYPE_1__* LPBYTE ;
typedef TYPE_5__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;
typedef TYPE_1__ FORMATIDOFFSET ;


 int ERR (char*,size_t,...) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int FMTID_SummaryInformation ;
 int IStream_Read (int *,TYPE_1__*,size_t,size_t*) ;
 int IStream_Seek (int *,TYPE_5__,int ,int *) ;
 int IsEqualGUID (int *,int *) ;
 int MSI_MAX_PROPS ;
 size_t SECT_HDR_SIZE ;
 int STREAM_SEEK_SET ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,TYPE_3__*,int *) ;
 int memcpy (TYPE_1__*,TYPE_1__*,size_t) ;
 TYPE_1__* msi_alloc (size_t) ;
 int msi_free (TYPE_1__*) ;
 int read_properties_from_data (int ,TYPE_1__*,size_t) ;

__attribute__((used)) static UINT load_summary_info( MSISUMMARYINFO *si, IStream *stm )
{
    PROPERTYSETHEADER set_hdr;
    FORMATIDOFFSET format_hdr;
    PROPERTYSECTIONHEADER section_hdr;
    LPBYTE data = ((void*)0);
    LARGE_INTEGER ofs;
    ULONG count, sz;
    HRESULT r;

    TRACE("%p %p\n", si, stm);


    sz = sizeof set_hdr;
    r = IStream_Read( stm, &set_hdr, sz, &count );
    if( FAILED(r) || count != sz )
        return ERROR_FUNCTION_FAILED;

    if( set_hdr.wByteOrder != 0xfffe )
    {
        ERR("property set not big-endian %04X\n", set_hdr.wByteOrder);
        return ERROR_FUNCTION_FAILED;
    }

    sz = sizeof format_hdr;
    r = IStream_Read( stm, &format_hdr, sz, &count );
    if( FAILED(r) || count != sz )
        return ERROR_FUNCTION_FAILED;


    if( !IsEqualGUID( &FMTID_SummaryInformation, &format_hdr.fmtid ) )
        return ERROR_FUNCTION_FAILED;


    ofs.QuadPart = format_hdr.dwOffset;
    r = IStream_Seek( stm, ofs, STREAM_SEEK_SET, ((void*)0) );
    if( FAILED(r) )
        return ERROR_FUNCTION_FAILED;


    sz = SECT_HDR_SIZE;
    r = IStream_Read( stm, &section_hdr, sz, &count );
    if( FAILED(r) || count != sz )
        return ERROR_FUNCTION_FAILED;

    if( section_hdr.cProperties > MSI_MAX_PROPS )
    {
        ERR("too many properties %d\n", section_hdr.cProperties);
        return ERROR_FUNCTION_FAILED;
    }

    data = msi_alloc( section_hdr.cbSection);
    if( !data )
        return ERROR_FUNCTION_FAILED;

    memcpy( data, &section_hdr, SECT_HDR_SIZE );


    sz = section_hdr.cbSection - SECT_HDR_SIZE;
    r = IStream_Read( stm, &data[ SECT_HDR_SIZE ], sz, &count );
    if( SUCCEEDED(r) && count == sz )
        read_properties_from_data( si->property, data, sz + SECT_HDR_SIZE );
    else
        ERR("failed to read properties %d %d\n", count, sz);

    msi_free( data );
    return ERROR_SUCCESS;
}
