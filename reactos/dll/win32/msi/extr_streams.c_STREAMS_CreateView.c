
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int * ops; } ;
struct TYPE_5__ {int * db; int num_cols; TYPE_1__ view; } ;
typedef int MSIVIEW ;
typedef TYPE_2__ MSISTREAMSVIEW ;
typedef int MSIDATABASE ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int NUM_STREAMS_COLS ;
 int TRACE (char*,int *,int **) ;
 scalar_t__ load_streams (int *) ;
 TYPE_2__* msi_alloc_zero (int) ;
 int streams_ops ;

UINT STREAMS_CreateView(MSIDATABASE *db, MSIVIEW **view)
{
    MSISTREAMSVIEW *sv;
    UINT r;

    TRACE("(%p, %p)\n", db, view);

    r = load_streams( db );
    if (r != ERROR_SUCCESS)
        return r;

    if (!(sv = msi_alloc_zero( sizeof(MSISTREAMSVIEW) )))
        return ERROR_OUTOFMEMORY;

    sv->view.ops = &streams_ops;
    sv->num_cols = NUM_STREAMS_COLS;
    sv->db = db;

    *view = (MSIVIEW *)sv;

    return ERROR_SUCCESS;
}
