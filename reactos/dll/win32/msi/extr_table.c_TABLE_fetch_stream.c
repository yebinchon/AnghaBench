
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tagMSIVIEW {TYPE_1__* ops; } ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int db; } ;
struct TYPE_4__ {int fetch_int; } ;
typedef TYPE_2__ MSITABLEVIEW ;
typedef int IStream ;


 int ERR (char*,scalar_t__,...) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int debugstr_w (int *) ;
 scalar_t__ get_stream_name (TYPE_2__*,scalar_t__,int **) ;
 int msi_free (int *) ;
 scalar_t__ msi_get_stream (int ,int *,int **) ;

__attribute__((used)) static UINT TABLE_fetch_stream( struct tagMSIVIEW *view, UINT row, UINT col, IStream **stm )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;
    UINT r;
    WCHAR *name;

    if( !view->ops->fetch_int )
        return ERROR_INVALID_PARAMETER;

    r = get_stream_name( tv, row, &name );
    if (r != ERROR_SUCCESS)
    {
        ERR("fetching stream, error = %u\n", r);
        return r;
    }

    r = msi_get_stream( tv->db, name, stm );
    if (r != ERROR_SUCCESS)
        ERR("fetching stream %s, error = %u\n", debugstr_w(name), r);

    msi_free( name );
    return r;
}
