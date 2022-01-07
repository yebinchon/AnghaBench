
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ictx; int ctx; } ;
typedef TYPE_1__ ScanIterator ;


 int ts_scanner_end_scan (int *,int *) ;

void
ts_scan_iterator_close(ScanIterator *iterator)
{
 ts_scanner_end_scan(&iterator->ctx, &iterator->ictx);
}
