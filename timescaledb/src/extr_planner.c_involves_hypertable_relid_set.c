
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relids ;
typedef int PlannerInfo ;


 int bms_next_member (int ,int) ;
 scalar_t__ involves_ts_hypertable_relid (int *,int) ;

__attribute__((used)) static bool
involves_hypertable_relid_set(PlannerInfo *root, Relids relid_set)
{
 int relid = -1;

 while ((relid = bms_next_member(relid_set, relid)) >= 0)
 {
  if (involves_ts_hypertable_relid(root, relid))
   return 1;
 }
 return 0;
}
