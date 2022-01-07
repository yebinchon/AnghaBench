
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc; int mctx; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int Hypertable ;


 int * hypertable_from_tuple (int ,int ,int ) ;

Hypertable *
ts_hypertable_from_tupleinfo(TupleInfo *ti)
{
 return hypertable_from_tuple(ti->tuple, ti->mctx, ti->desc);
}
