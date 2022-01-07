
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int redact_snaps_contains (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static boolean_t
compatible_redact_snaps(uint64_t *origin_snaps, uint64_t origin_num_snaps,
    uint64_t *redact_snaps, uint64_t num_redact_snaps)
{





 if (num_redact_snaps > origin_num_snaps) {
  return (B_FALSE);
 }

 for (int i = 0; i < num_redact_snaps; i++) {
  if (!redact_snaps_contains(origin_snaps, origin_num_snaps,
      redact_snaps[i])) {
   return (B_FALSE);
  }
 }
 return (B_TRUE);
}
