
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_8__ {TYPE_2__* wv; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int (* get_dimensions ) (TYPE_2__*,int *,int *) ;} ;
typedef TYPE_2__ MSIVIEW ;
typedef TYPE_3__ MSIUPDATEVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,TYPE_3__*,int *,int *) ;
 int stub1 (TYPE_2__*,int *,int *) ;

__attribute__((used)) static UINT UPDATE_get_dimensions( struct tagMSIVIEW *view, UINT *rows, UINT *cols )
{
    MSIUPDATEVIEW *uv = (MSIUPDATEVIEW*)view;
    MSIVIEW *wv;

    TRACE("%p %p %p\n", uv, rows, cols );

    wv = uv->wv;
    if( !wv )
        return ERROR_FUNCTION_FAILED;

    return wv->ops->get_dimensions( wv, rows, cols );
}
