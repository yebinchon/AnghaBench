
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_13__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIPACKAGE ;
typedef scalar_t__* LPWSTR ;
typedef int* LPDWORD ;
typedef int DWORD ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_MORE_DATA ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 TYPE_1__* MSI_CloneRecord (TYPE_1__*) ;
 int MSI_RecordGetFieldCount (TYPE_1__*) ;
 int * MSI_RecordGetString (TYPE_1__*,int) ;
 int MSI_RecordSetStringW (TYPE_1__*,int,int *) ;
 int TRACE (char*,int *,TYPE_1__*,scalar_t__*,int*) ;
 int * build_default_format (TYPE_1__*) ;
 int deformat_string_internal (int *,int *,int **,int*,TYPE_1__*) ;
 int dump_record (TYPE_1__*) ;
 int memcpy (scalar_t__*,int *,int) ;
 int * msi_dup_record_field (TYPE_1__*,int ) ;
 int msi_free (int *) ;
 int msiobj_release (int *) ;

UINT MSI_FormatRecordW( MSIPACKAGE* package, MSIRECORD* record, LPWSTR buffer,
                        LPDWORD size )
{
    WCHAR *format, *deformated = ((void*)0);
    UINT rc = ERROR_INVALID_PARAMETER;
    DWORD len;
    MSIRECORD *record_deformated;
    int field_count, i;

    TRACE("%p %p %p %p\n", package, record, buffer, size);
    dump_record(record);

    if (!(format = msi_dup_record_field( record, 0 )))
        format = build_default_format( record );

    field_count = MSI_RecordGetFieldCount(record);
    record_deformated = MSI_CloneRecord(record);
    if (!record_deformated)
    {
        rc = ERROR_OUTOFMEMORY;
        goto end;
    }
    MSI_RecordSetStringW(record_deformated, 0, format);
    for (i = 1; i <= field_count; i++)
    {
        if (MSI_RecordGetString(record, i))
        {
            deformat_string_internal(package, MSI_RecordGetString(record, i), &deformated, &len, ((void*)0));
            MSI_RecordSetStringW(record_deformated, i, deformated);
            msi_free(deformated);
        }
    }

    deformat_string_internal(package, format, &deformated, &len, record_deformated);
    if (buffer)
    {
        if (*size>len)
        {
            memcpy(buffer,deformated,len*sizeof(WCHAR));
            rc = ERROR_SUCCESS;
            buffer[len] = 0;
        }
        else
        {
            if (*size > 0)
            {
                memcpy(buffer,deformated,(*size)*sizeof(WCHAR));
                buffer[(*size)-1] = 0;
            }
            rc = ERROR_MORE_DATA;
        }
    }
    else rc = ERROR_SUCCESS;

    *size = len;
    msiobj_release(&record_deformated->hdr);
end:
    msi_free( format );
    msi_free( deformated );
    return rc;
}
