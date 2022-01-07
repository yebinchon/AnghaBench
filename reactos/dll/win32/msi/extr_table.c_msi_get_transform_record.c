
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int string_table ;
typedef int WCHAR ;
typedef int USHORT ;
typedef int UINT ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {int hdr; } ;
struct TYPE_13__ {int num_cols; int db; TYPE_3__* columns; } ;
typedef TYPE_1__ MSITABLEVIEW ;
typedef TYPE_2__ MSIRECORD ;
typedef TYPE_3__ MSICOLUMNINFO ;
typedef int LPWSTR ;
typedef int IStream ;
typedef int IStorage ;
typedef int BYTE ;


 int ERR (char*,int) ;
 int ERROR_SUCCESS ;
 int IStorage_OpenStream (int *,int ,int *,int,int ,int **) ;
 scalar_t__ MSITYPE_IS_BINARY (int) ;
 int MSITYPE_KEY ;
 int MSITYPE_STRING ;
 TYPE_2__* MSI_CreateRecord (int) ;
 int MSI_RecordSetInteger (TYPE_2__*,int,int) ;
 int MSI_RecordSetStream (TYPE_2__*,int,int *) ;
 int STGM_READ ;
 int STGM_SHARE_EXCLUSIVE ;
 int TRACE (char*,...) ;
 int bytes_per_column (int ,TYPE_3__*,int) ;
 int debugstr_w (int ) ;
 int debugstr_wn (int const*,int) ;
 int msi_free (int ) ;
 int msi_record_encoded_stream_name (TYPE_1__ const*,TYPE_2__*,int *) ;
 int msi_record_set_string (TYPE_2__*,int,int const*,int) ;
 int * msi_string_lookup (int const*,int,int*) ;
 int msiobj_release (int *) ;
 int read_raw_int (int const*,int,int) ;

__attribute__((used)) static MSIRECORD *msi_get_transform_record( const MSITABLEVIEW *tv, const string_table *st,
                                            IStorage *stg, const BYTE *rawdata, UINT bytes_per_strref )
{
    UINT i, val, ofs = 0;
    USHORT mask;
    MSICOLUMNINFO *columns = tv->columns;
    MSIRECORD *rec;

    mask = rawdata[0] | (rawdata[1] << 8);
    rawdata += 2;

    rec = MSI_CreateRecord( tv->num_cols );
    if( !rec )
        return rec;

    TRACE("row ->\n");
    for( i=0; i<tv->num_cols; i++ )
    {
        if ( (mask&1) && (i>=(mask>>8)) )
            break;

        if ( (~mask&1) && (~columns[i].type & MSITYPE_KEY) && ((1<<i) & ~mask) )
            continue;

        if( MSITYPE_IS_BINARY(tv->columns[i].type) )
        {
            LPWSTR encname;
            IStream *stm = ((void*)0);
            UINT r;

            ofs += bytes_per_column( tv->db, &columns[i], bytes_per_strref );

            r = msi_record_encoded_stream_name( tv, rec, &encname );
            if ( r != ERROR_SUCCESS )
            {
                msiobj_release( &rec->hdr );
                return ((void*)0);
            }
            r = IStorage_OpenStream( stg, encname, ((void*)0), STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm );
            if ( r != ERROR_SUCCESS )
            {
                msiobj_release( &rec->hdr );
                msi_free( encname );
                return ((void*)0);
            }

            MSI_RecordSetStream( rec, i+1, stm );
            TRACE(" field %d [%s]\n", i+1, debugstr_w(encname));
            msi_free( encname );
        }
        else if( columns[i].type & MSITYPE_STRING )
        {
            int len;
            const WCHAR *sval;

            val = read_raw_int(rawdata, ofs, bytes_per_strref);
            sval = msi_string_lookup( st, val, &len );
            msi_record_set_string( rec, i+1, sval, len );
            TRACE(" field %d [%s]\n", i+1, debugstr_wn(sval, len));
            ofs += bytes_per_strref;
        }
        else
        {
            UINT n = bytes_per_column( tv->db, &columns[i], bytes_per_strref );
            switch( n )
            {
            case 2:
                val = read_raw_int(rawdata, ofs, n);
                if (val)
                    MSI_RecordSetInteger( rec, i+1, val-0x8000 );
                TRACE(" field %d [0x%04x]\n", i+1, val );
                break;
            case 4:
                val = read_raw_int(rawdata, ofs, n);
                if (val)
                    MSI_RecordSetInteger( rec, i+1, val^0x80000000 );
                TRACE(" field %d [0x%08x]\n", i+1, val );
                break;
            default:
                ERR("oops - unknown column width %d\n", n);
                break;
            }
            ofs += n;
        }
    }
    return rec;
}
