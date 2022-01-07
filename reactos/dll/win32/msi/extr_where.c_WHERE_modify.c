
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_10__ {TYPE_1__* ops; } ;
struct TYPE_9__ {TYPE_4__* view; int next; } ;
struct TYPE_8__ {TYPE_3__* tables; } ;
struct TYPE_7__ {int (* modify ) (TYPE_4__*,int ,int *,int) ;} ;
typedef TYPE_2__ MSIWHEREVIEW ;
typedef int MSIRECORD ;
typedef int MSIMODIFY ;
typedef TYPE_3__ JOINTABLE ;


 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*,int ,int *) ;
 int WARN (char*,struct tagMSIVIEW*,int ,int *,int) ;
 scalar_t__ find_row (TYPE_2__*,int,int**) ;
 int join_modify_update (struct tagMSIVIEW*,int *) ;
 int stub1 (TYPE_4__*,int ,int *,int) ;

__attribute__((used)) static UINT WHERE_modify( struct tagMSIVIEW *view, MSIMODIFY eModifyMode,
                          MSIRECORD *rec, UINT row )
{
    MSIWHEREVIEW *wv = (MSIWHEREVIEW*)view;
    JOINTABLE *table = wv->tables;
    UINT r;

    TRACE("%p %d %p\n", wv, eModifyMode, rec);

    if (!table)
        return ERROR_FUNCTION_FAILED;

    if (!table->next)
    {
        UINT *rows;

        if (find_row(wv, row - 1, &rows) == ERROR_SUCCESS)
            row = rows[0] + 1;
        else
            row = -1;

        return table->view->ops->modify(table->view, eModifyMode, rec, row);
    }

    switch (eModifyMode)
    {
    case 132:
        return join_modify_update( view, rec );

    case 140:
    case 139:
    case 138:
    case 137:
    case 136:
    case 134:
    case 133:
    case 131:
    case 130:
    case 129:
    case 128:
        r = ERROR_FUNCTION_FAILED;
        break;

    case 135:
        r = ERROR_CALL_NOT_IMPLEMENTED;
        break;

    default:
        WARN("%p %d %p %u - unknown mode\n", view, eModifyMode, rec, row );
        r = ERROR_INVALID_PARAMETER;
        break;
    }

    return r;
}
