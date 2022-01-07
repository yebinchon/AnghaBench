
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hypertable ;


 int ts_guc_disable_optimizations ;
 scalar_t__ ts_guc_optimize_non_hypertables ;

__attribute__((used)) static inline bool
should_optimize_query(Hypertable *ht)
{
 return !ts_guc_disable_optimizations && (ts_guc_optimize_non_hypertables || ht != ((void*)0));
}
