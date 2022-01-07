
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok_int (scalar_t__,scalar_t__) ;
 scalar_t__ s_cStages ;
 scalar_t__ s_iStage ;
 int s_iStep ;
 int skip (char*,int ) ;

__attribute__((used)) static void DoFinish(void)
{
    ok_int(s_iStage, s_cStages);
    if (s_iStage != s_cStages)
    {
        skip("Some stage(s) skipped (Step: %d)\n", s_iStep);
    }
}
