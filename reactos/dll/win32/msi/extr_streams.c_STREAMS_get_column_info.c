
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_2__ {scalar_t__ num_cols; } ;
typedef TYPE_1__ MSISTREAMSVIEW ;
typedef int LPCWSTR ;
typedef int BOOL ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ MAX_STREAM_NAME_LEN ;
 scalar_t__ MSITYPE_NULLABLE ;
 scalar_t__ MSITYPE_STRING ;
 scalar_t__ MSITYPE_VALID ;
 int TRACE (char*,struct tagMSIVIEW*,scalar_t__,int *,scalar_t__*,int *,int *) ;
 int szData ;
 int szName ;
 int szStreams ;

__attribute__((used)) static UINT STREAMS_get_column_info( struct tagMSIVIEW *view, UINT n, LPCWSTR *name,
                                     UINT *type, BOOL *temporary, LPCWSTR *table_name )
{
    MSISTREAMSVIEW *sv = (MSISTREAMSVIEW *)view;

    TRACE("(%p, %d, %p, %p, %p, %p)\n", view, n, name, type, temporary, table_name);

    if (!n || n > sv->num_cols)
        return ERROR_INVALID_PARAMETER;

    switch (n)
    {
    case 1:
        if (name) *name = szName;
        if (type) *type = MSITYPE_STRING | MSITYPE_VALID | MAX_STREAM_NAME_LEN;
        break;

    case 2:
        if (name) *name = szData;
        if (type) *type = MSITYPE_STRING | MSITYPE_VALID | MSITYPE_NULLABLE;
        break;
    }
    if (table_name) *table_name = szStreams;
    if (temporary) *temporary = FALSE;
    return ERROR_SUCCESS;
}
