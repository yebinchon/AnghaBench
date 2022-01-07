
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int ScanTupleResult ;
typedef int Chunk ;


 int SCAN_DONE ;
 int chunk_fill (int *,int ,int ) ;

__attribute__((used)) static ScanTupleResult
chunk_tuple_found(TupleInfo *ti, void *arg)
{
 Chunk *chunk = arg;

 chunk_fill(chunk, ti->tuple, ti->desc);
 return SCAN_DONE;
}
