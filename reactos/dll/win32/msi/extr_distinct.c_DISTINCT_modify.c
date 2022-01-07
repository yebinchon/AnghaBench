
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
typedef int MSIRECORD ;
typedef int MSIMODIFY ;
typedef TYPE_2__ MSIDISTINCTVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,TYPE_2__*,int ,int *) ;
 int stub1 (TYPE_3__*,int ,int *,int ) ;

__attribute__((used)) static UINT DISTINCT_modify( struct tagMSIVIEW *view, MSIMODIFY eModifyMode,
                             MSIRECORD *rec, UINT row )
{
    MSIDISTINCTVIEW *dv = (MSIDISTINCTVIEW*)view;

    TRACE("%p %d %p\n", dv, eModifyMode, rec );

    if( !dv->table )
         return ERROR_FUNCTION_FAILED;

    return dv->table->ops->modify( dv->table, eModifyMode, rec, row );
}
