
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ zo_ashift; } ;


 scalar_t__ SPA_MINBLOCKSHIFT ;
 TYPE_1__ ztest_opts ;
 scalar_t__ ztest_random (int) ;

__attribute__((used)) static uint64_t
ztest_get_ashift(void)
{
 if (ztest_opts.zo_ashift == 0)
  return (SPA_MINBLOCKSHIFT + ztest_random(5));
 return (ztest_opts.zo_ashift);
}
