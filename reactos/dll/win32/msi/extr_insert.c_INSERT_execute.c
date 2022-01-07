
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_22__ {TYPE_2__* ops; } ;
struct TYPE_21__ {int bIsTemp; TYPE_6__* table; int vals; TYPE_3__* sv; } ;
struct TYPE_20__ {int hdr; } ;
struct TYPE_19__ {TYPE_1__* ops; } ;
struct TYPE_18__ {int (* insert_row ) (TYPE_6__*,TYPE_4__*,int,int ) ;} ;
struct TYPE_17__ {int (* execute ) (TYPE_3__*,int ) ;int (* get_dimensions ) (TYPE_3__*,int *,int*) ;} ;
typedef TYPE_3__ MSIVIEW ;
typedef TYPE_4__ MSIRECORD ;
typedef TYPE_5__ MSIINSERTVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int TRACE (char*,...) ;
 int msi_arrange_record (TYPE_5__*,TYPE_4__**) ;
 TYPE_4__* msi_query_merge_record (int,int ,TYPE_4__*) ;
 int msiobj_release (int *) ;
 scalar_t__ row_has_null_primary_keys (TYPE_5__*,TYPE_4__*) ;
 int stub1 (TYPE_3__*,int ) ;
 int stub2 (TYPE_3__*,int *,int*) ;
 int stub3 (TYPE_6__*,TYPE_4__*,int,int ) ;

__attribute__((used)) static UINT INSERT_execute( struct tagMSIVIEW *view, MSIRECORD *record )
{
    MSIINSERTVIEW *iv = (MSIINSERTVIEW*)view;
    UINT r, row = -1, col_count = 0;
    MSIVIEW *sv;
    MSIRECORD *values = ((void*)0);

    TRACE("%p %p\n", iv, record );

    sv = iv->sv;
    if( !sv )
        return ERROR_FUNCTION_FAILED;

    r = sv->ops->execute( sv, 0 );
    TRACE("sv execute returned %x\n", r);
    if( r )
        return r;

    r = sv->ops->get_dimensions( sv, ((void*)0), &col_count );
    if( r )
        goto err;





    values = msi_query_merge_record( col_count, iv->vals, record );
    if( !values )
        goto err;

    r = msi_arrange_record( iv, &values );
    if( r != ERROR_SUCCESS )
        goto err;


    if( row_has_null_primary_keys( iv, values ) )
        row = 0;

    r = iv->table->ops->insert_row( iv->table, values, row, iv->bIsTemp );

err:
    if( values )
        msiobj_release( &values->hdr );

    return r;
}
