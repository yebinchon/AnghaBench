
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {int num_cols; } ;
typedef TYPE_1__ MSITABLEVIEW ;
typedef int MSIRECORD ;


 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_1__*,...) ;

__attribute__((used)) static UINT TABLE_execute( struct tagMSIVIEW *view, MSIRECORD *record )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;

    TRACE("%p %p\n", tv, record);

    TRACE("There are %d columns\n", tv->num_cols );

    return ERROR_SUCCESS;
}
