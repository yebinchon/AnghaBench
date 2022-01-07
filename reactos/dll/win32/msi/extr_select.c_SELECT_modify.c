
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {TYPE_3__* table; } ;
struct TYPE_5__ {int (* modify ) (TYPE_3__*,int ,int *,int ) ;} ;
typedef TYPE_2__ MSISELECTVIEW ;
typedef int MSIRECORD ;
typedef int MSIMODIFY ;


 int ERROR_FUNCTION_FAILED ;
 int MSIMODIFY_UPDATE ;
 int TRACE (char*,TYPE_2__*,int ,int *,int ) ;
 int msi_select_update (struct tagMSIVIEW*,int *,int ) ;
 int stub1 (TYPE_3__*,int ,int *,int ) ;

__attribute__((used)) static UINT SELECT_modify( struct tagMSIVIEW *view, MSIMODIFY eModifyMode,
                           MSIRECORD *rec, UINT row )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;

    TRACE("%p %d %p %d\n", sv, eModifyMode, rec, row );

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    if (eModifyMode == MSIMODIFY_UPDATE)
        return msi_select_update(view, rec, row);

    return sv->table->ops->modify( sv->table, eModifyMode, rec, row );
}
