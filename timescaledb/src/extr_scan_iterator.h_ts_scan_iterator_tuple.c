
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* tinfo; } ;
struct TYPE_4__ {int tuple; } ;
typedef TYPE_2__ ScanIterator ;
typedef int HeapTuple ;



__attribute__((used)) static inline HeapTuple
ts_scan_iterator_tuple(ScanIterator *iterator)
{
 return iterator->tinfo->tuple;
}
