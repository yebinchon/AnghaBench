
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pd_flags; } ;
typedef TYPE_1__ prefetch_data_t ;
typedef int boolean_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 scalar_t__ BP_GET_TYPE (int const*) ;
 scalar_t__ BP_IS_EMBEDDED (int const*) ;
 scalar_t__ BP_IS_HOLE (int const*) ;
 scalar_t__ BP_IS_REDACTED (int const*) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ DMU_OT_INTENT_LOG ;
 int TRAVERSE_PREFETCH_DATA ;

__attribute__((used)) static boolean_t
prefetch_needed(prefetch_data_t *pfd, const blkptr_t *bp)
{
 ASSERT(pfd->pd_flags & TRAVERSE_PREFETCH_DATA);
 if (BP_IS_HOLE(bp) || BP_IS_EMBEDDED(bp) ||
     BP_GET_TYPE(bp) == DMU_OT_INTENT_LOG || BP_IS_REDACTED(bp))
  return (B_FALSE);
 return (B_TRUE);
}
