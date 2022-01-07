
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {TYPE_3__* table; } ;
struct TYPE_6__ {scalar_t__ (* execute ) (TYPE_3__*,int *) ;scalar_t__ (* drop ) (TYPE_3__*) ;} ;
typedef int MSIRECORD ;
typedef TYPE_2__ MSIDROPVIEW ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*,int *) ;
 scalar_t__ stub1 (TYPE_3__*,int *) ;
 scalar_t__ stub2 (TYPE_3__*) ;

__attribute__((used)) static UINT DROP_execute(struct tagMSIVIEW *view, MSIRECORD *record)
{
    MSIDROPVIEW *dv = (MSIDROPVIEW*)view;
    UINT r;

    TRACE("%p %p\n", dv, record);

    if( !dv->table )
         return ERROR_FUNCTION_FAILED;

    r = dv->table->ops->execute(dv->table, record);
    if (r != ERROR_SUCCESS)
        return r;

    return dv->table->ops->drop(dv->table);
}
