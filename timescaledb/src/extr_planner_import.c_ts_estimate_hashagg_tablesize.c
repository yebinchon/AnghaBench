
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Path {TYPE_1__* pathtarget; } ;
struct AggClauseCosts {int numAggs; scalar_t__ transitionSpace; } ;
struct TYPE_2__ {int width; } ;


 size_t MAXALIGN (int ) ;
 int SizeofMinimalTupleHeader ;
 scalar_t__ hash_agg_entry_size (int ) ;

size_t
ts_estimate_hashagg_tablesize(struct Path *path, const struct AggClauseCosts *agg_costs,
         double dNumGroups)
{
 size_t hashentrysize;


 hashentrysize = MAXALIGN(path->pathtarget->width) + MAXALIGN(SizeofMinimalTupleHeader);


 hashentrysize += agg_costs->transitionSpace;

 hashentrysize += hash_agg_entry_size(agg_costs->numAggs);







 return hashentrysize * dNumGroups;
}
