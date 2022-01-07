
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
struct TYPE_5__ {int (* get_row ) (TYPE_3__*,int ,int **) ;} ;
typedef int MSIRECORD ;
typedef TYPE_2__ MSIALTERVIEW ;


 int TRACE (char*,TYPE_2__*,int ,int **) ;
 int stub1 (TYPE_3__*,int ,int **) ;

__attribute__((used)) static UINT ALTER_get_row( struct tagMSIVIEW *view, UINT row, MSIRECORD **rec )
{
    MSIALTERVIEW *av = (MSIALTERVIEW*)view;

    TRACE("%p %d %p\n", av, row, rec );

    return av->table->ops->get_row(av->table, row, rec);
}
