
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int redact_snaps_contains (scalar_t__ const*,scalar_t__,scalar_t__ const) ;

__attribute__((used)) static boolean_t
redact_snaps_equal(const uint64_t *snaps1, uint64_t num_snaps1,
    const uint64_t *snaps2, uint64_t num_snaps2)
{
 if (num_snaps1 != num_snaps2)
  return (B_FALSE);
 for (int i = 0; i < num_snaps1; i++) {
  if (!redact_snaps_contains(snaps2, num_snaps2, snaps1[i]))
   return (B_FALSE);
 }
 return (B_TRUE);
}
