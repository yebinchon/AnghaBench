
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ ICommDlgBrowser3_iface; } ;
typedef TYPE_2__ ICommDlgBrowser3Impl ;


 int cdbvtbl ;
 TYPE_2__* heap_alloc_zero (int) ;

__attribute__((used)) static ICommDlgBrowser3Impl *create_commdlgbrowser3(void)
{
    ICommDlgBrowser3Impl *cdb;

    cdb = heap_alloc_zero(sizeof(*cdb));
    cdb->ICommDlgBrowser3_iface.lpVtbl = &cdbvtbl;
    cdb->ref = 1;

    return cdb;
}
