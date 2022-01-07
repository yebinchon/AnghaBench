
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;

__attribute__((used)) static boolean_t
redact_snaps_contains(const uint64_t *snaps, uint64_t num_snaps, uint64_t guid)
{
 for (int i = 0; i < num_snaps; i++) {
  if (snaps[i] == guid)
   return (B_TRUE);
 }
 return (B_FALSE);
}
