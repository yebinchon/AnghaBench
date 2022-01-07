
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {TYPE_2__* ops; } ;
struct TYPE_10__ {TYPE_1__* ops; } ;
struct TYPE_9__ {TYPE_4__* table; TYPE_5__* sv; } ;
struct TYPE_8__ {int (* get_column_info ) (TYPE_5__*,int,int *,int *,int *,int *) ;} ;
struct TYPE_7__ {int (* get_column_info ) (TYPE_4__*,int,int *,int *,int *,int *) ;} ;
typedef TYPE_3__ MSIINSERTVIEW ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmpW (int ,int ) ;
 int stub1 (TYPE_5__*,int,int *,int *,int *,int *) ;
 int stub2 (TYPE_4__*,int,int *,int *,int *,int *) ;

__attribute__((used)) static BOOL msi_columns_in_order(MSIINSERTVIEW *iv, UINT col_count)
{
    LPCWSTR a, b;
    UINT i;

    for (i = 1; i <= col_count; i++)
    {
        iv->sv->ops->get_column_info(iv->sv, i, &a, ((void*)0), ((void*)0), ((void*)0));
        iv->table->ops->get_column_info(iv->table, i, &b, ((void*)0), ((void*)0), ((void*)0));

        if (strcmpW( a, b )) return FALSE;
    }
    return TRUE;
}
