
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {TYPE_1__* tinfo; } ;
struct TYPE_4__ {int desc; } ;
typedef TYPE_2__ ScanIterator ;



__attribute__((used)) static inline TupleDesc
ts_scan_iterator_tupledesc(ScanIterator *iterator)
{
 return iterator->tinfo->desc;
}
