
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef size_t UINT ;
struct TYPE_6__ {int error_column; int error; } ;
struct TYPE_8__ {TYPE_2__* columns; TYPE_1__ view; } ;
struct TYPE_7__ {int colname; } ;
typedef TYPE_3__ MSITABLEVIEW ;
typedef int MSIRECORD ;
typedef int MSIMODIFY ;


 size_t ERROR_CALL_NOT_IMPLEMENTED ;
 size_t ERROR_INVALID_DATA ;
 size_t ERROR_SUCCESS ;
 int FALSE ;
 int FIXME (char*,struct tagMSIVIEW*,int,int *) ;
 int MSIDBERROR_DUPLICATEKEY ;
 size_t TABLE_insert_row (struct tagMSIVIEW*,int *,int,int ) ;
 int TRACE (char*,struct tagMSIVIEW*,int,int *) ;
 int TRUE ;
 size_t modify_delete_row (struct tagMSIVIEW*,int *) ;
 size_t msi_refresh_record (struct tagMSIVIEW*,int *,size_t) ;
 size_t msi_table_assign (struct tagMSIVIEW*,int *) ;
 size_t msi_table_find_row (TYPE_3__*,int *,size_t*,size_t*) ;
 size_t msi_table_update (struct tagMSIVIEW*,int *,size_t) ;
 size_t table_validate_new (TYPE_3__*,int *,size_t*) ;

__attribute__((used)) static UINT TABLE_modify( struct tagMSIVIEW *view, MSIMODIFY eModifyMode,
                          MSIRECORD *rec, UINT row)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT r, frow, column;

    TRACE("%p %d %p\n", view, eModifyMode, rec );

    switch (eModifyMode)
    {
    case 138:
        r = modify_delete_row( view, rec );
        break;
    case 128:
        r = table_validate_new( tv, rec, &column );
        if (r != ERROR_SUCCESS)
        {
            tv->view.error = MSIDBERROR_DUPLICATEKEY;
            tv->view.error_column = tv->columns[column].colname;
            r = ERROR_INVALID_DATA;
        }
        break;

    case 137:
        r = table_validate_new( tv, rec, ((void*)0) );
        if (r != ERROR_SUCCESS)
            break;
        r = TABLE_insert_row( view, rec, -1, FALSE );
        break;

    case 136:
        r = table_validate_new( tv, rec, ((void*)0) );
        if (r != ERROR_SUCCESS)
            break;
        r = TABLE_insert_row( view, rec, -1, TRUE );
        break;

    case 134:
        r = msi_refresh_record( view, rec, row );
        break;

    case 132:
        r = msi_table_update( view, rec, row );
        break;

    case 139:
        r = msi_table_assign( view, rec );
        break;

    case 135:

        r = msi_table_find_row( tv, rec, &frow, &column );
        if (r != ERROR_SUCCESS)
        {
            r = table_validate_new( tv, rec, ((void*)0) );
            if (r == ERROR_SUCCESS)
                r = TABLE_insert_row( view, rec, -1, FALSE );
        }
        break;

    case 133:
    case 131:
    case 129:
    case 130:
        FIXME("%p %d %p - mode not implemented\n", view, eModifyMode, rec );
        r = ERROR_CALL_NOT_IMPLEMENTED;
        break;

    default:
        r = ERROR_INVALID_DATA;
    }

    return r;
}
