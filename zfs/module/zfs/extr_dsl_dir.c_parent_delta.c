
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef int dsl_dir_t ;
struct TYPE_2__ {int dd_reserved; } ;


 scalar_t__ MAX (scalar_t__,int ) ;
 TYPE_1__* dsl_dir_phys (int *) ;

__attribute__((used)) static int64_t
parent_delta(dsl_dir_t *dd, uint64_t used, int64_t delta)
{
 uint64_t old_accounted = MAX(used, dsl_dir_phys(dd)->dd_reserved);
 uint64_t new_accounted =
     MAX(used + delta, dsl_dir_phys(dd)->dd_reserved);
 return (new_accounted - old_accounted);
}
