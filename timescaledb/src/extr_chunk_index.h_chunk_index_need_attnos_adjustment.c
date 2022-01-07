
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_5__ {int tdhasoid; int natts; } ;


 int chunk_index_columns_changed (int ,int ,TYPE_1__*) ;

__attribute__((used)) static inline bool
chunk_index_need_attnos_adjustment(TupleDesc htdesc, TupleDesc chunkdesc)
{
 return chunk_index_columns_changed(htdesc->natts, htdesc->tdhasoid, chunkdesc);
}
