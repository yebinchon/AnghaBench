
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int level; int L; TYPE_1__* capture; } ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef TYPE_2__ MatchState ;


 scalar_t__ CAP_UNFINISHED ;
 int LJ_ERR_STRCAPI ;
 int lj_err_caller (int ,int ) ;

__attribute__((used)) static int check_capture(MatchState *ms, int l)
{
  l -= '1';
  if (l < 0 || l >= ms->level || ms->capture[l].len == CAP_UNFINISHED)
    lj_err_caller(ms->L, LJ_ERR_STRCAPI);
  return l;
}
