
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_3__ {int natts; int tdhasoid; } ;



__attribute__((used)) static inline bool
chunk_index_columns_changed(int hypertable_natts, bool hypertable_has_oid, TupleDesc chunkdesc)
{





 return !(hypertable_natts == chunkdesc->natts && hypertable_has_oid == chunkdesc->tdhasoid);
}
