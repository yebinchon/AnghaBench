
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef size_t UINT ;
struct TYPE_6__ {TYPE_2__* table; } ;
struct TYPE_5__ {size_t col_count; int ref_count; TYPE_1__* colinfo; } ;
struct TYPE_4__ {int type; int ref_count; } ;
typedef TYPE_3__ MSITABLEVIEW ;


 size_t InterlockedIncrement (int *) ;
 int MSITYPE_TEMPORARY ;
 int TRACE (char*,struct tagMSIVIEW*,int ) ;

__attribute__((used)) static UINT TABLE_add_ref(struct tagMSIVIEW *view)
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT i;

    TRACE("%p %d\n", view, tv->table->ref_count);

    for (i = 0; i < tv->table->col_count; i++)
    {
        if (tv->table->colinfo[i].type & MSITYPE_TEMPORARY)
            InterlockedIncrement(&tv->table->colinfo[i].ref_count);
    }

    return InterlockedIncrement(&tv->table->ref_count);
}
