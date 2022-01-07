
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_8__ {int strings; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_6__ {int num_cols; TYPE_4__* db; TYPE_2__* columns; } ;
typedef TYPE_1__ MSITABLEVIEW ;
typedef int MSIRECORD ;
typedef TYPE_2__ MSICOLUMNINFO ;


 int ERR (char*,int,int) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int LONG_STR_BYTES ;
 scalar_t__ MSITYPE_IS_BINARY (int) ;
 int MSITYPE_STRING ;
 int MSI_RecordGetInteger (int *,int) ;
 scalar_t__ MSI_RecordIsNull (int *,int) ;
 int bytes_per_column (TYPE_4__*,TYPE_2__*,int ) ;
 int * msi_record_get_string (int *,int,int*) ;
 int msi_string2id (int ,int const*,int,int*) ;

__attribute__((used)) static UINT get_table_value_from_record( MSITABLEVIEW *tv, MSIRECORD *rec, UINT iField, UINT *pvalue )
{
    MSICOLUMNINFO columninfo;
    UINT r;
    int ival;

    if ( (iField <= 0) ||
         (iField > tv->num_cols) ||
          MSI_RecordIsNull( rec, iField ) )
        return ERROR_FUNCTION_FAILED;

    columninfo = tv->columns[ iField - 1 ];

    if ( MSITYPE_IS_BINARY(columninfo.type) )
    {
        *pvalue = 1;
    }
    else if ( columninfo.type & MSITYPE_STRING )
    {
        int len;
        const WCHAR *sval = msi_record_get_string( rec, iField, &len );
        if (sval)
        {
            r = msi_string2id( tv->db->strings, sval, len, pvalue );
            if (r != ERROR_SUCCESS)
                return ERROR_NOT_FOUND;
        }
        else *pvalue = 0;
    }
    else if ( bytes_per_column( tv->db, &columninfo, LONG_STR_BYTES ) == 2 )
    {
        ival = MSI_RecordGetInteger( rec, iField );
        if (ival == 0x80000000) *pvalue = 0x8000;
        else
        {
            *pvalue = 0x8000 + MSI_RecordGetInteger( rec, iField );
            if (*pvalue & 0xffff0000)
            {
                ERR("field %u value %d out of range\n", iField, *pvalue - 0x8000);
                return ERROR_FUNCTION_FAILED;
            }
        }
    }
    else
    {
        ival = MSI_RecordGetInteger( rec, iField );
        *pvalue = ival ^ 0x80000000;
    }

    return ERROR_SUCCESS;
}
