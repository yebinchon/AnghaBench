
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int reorder_size; int ** reorder; } ;
typedef TYPE_1__ MSIWHEREVIEW ;
typedef int MSIROWENTRY ;


 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int INITIAL_REORDER_SIZE ;
 int free_reorder (TYPE_1__*) ;
 int ** msi_alloc_zero (int) ;

__attribute__((used)) static UINT init_reorder(MSIWHEREVIEW *wv)
{
    MSIROWENTRY **new = msi_alloc_zero(sizeof(MSIROWENTRY *) * INITIAL_REORDER_SIZE);
    if (!new)
        return ERROR_OUTOFMEMORY;

    free_reorder(wv);

    wv->reorder = new;
    wv->reorder_size = INITIAL_REORDER_SIZE;

    return ERROR_SUCCESS;
}
