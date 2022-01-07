
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zprl_type; } ;
typedef TYPE_1__ replication_level_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static boolean_t
is_raidz_mirror(replication_level_t *a, replication_level_t *b,
    replication_level_t **raidz, replication_level_t **mirror)
{
 if (strcmp(a->zprl_type, "raidz") == 0 &&
     strcmp(b->zprl_type, "mirror") == 0) {
  *raidz = a;
  *mirror = b;
  return (B_TRUE);
 }
 return (B_FALSE);
}
