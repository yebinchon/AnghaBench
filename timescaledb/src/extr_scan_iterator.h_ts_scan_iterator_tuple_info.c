
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleInfo ;
struct TYPE_3__ {int * tinfo; } ;
typedef TYPE_1__ ScanIterator ;



__attribute__((used)) static inline TupleInfo *
ts_scan_iterator_tuple_info(ScanIterator *iterator)
{
 return iterator->tinfo;
}
