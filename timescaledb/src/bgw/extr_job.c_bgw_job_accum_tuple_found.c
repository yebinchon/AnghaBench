
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mctx; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_5__ {int list; int alloc_size; } ;
typedef int ScanTupleResult ;
typedef int MemoryContext ;
typedef int BgwJob ;
typedef TYPE_2__ AccumData ;


 int MemoryContextSwitchTo (int ) ;
 int SCAN_CONTINUE ;
 int * bgw_job_from_tuple (int ,int ,int ) ;
 int lappend (int ,int *) ;

__attribute__((used)) static ScanTupleResult
bgw_job_accum_tuple_found(TupleInfo *ti, void *data)
{
 AccumData *list_data = data;
 BgwJob *job = bgw_job_from_tuple(ti->tuple, list_data->alloc_size, ti->mctx);
 MemoryContext orig = MemoryContextSwitchTo(ti->mctx);

 list_data->list = lappend(list_data->list, job);

 MemoryContextSwitchTo(orig);
 return SCAN_CONTINUE;
}
