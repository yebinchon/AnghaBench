
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int spa_t ;


 scalar_t__ spa_get_random (unsigned long long) ;
 scalar_t__ spa_guid (int *) ;
 scalar_t__ spa_guid_exists (scalar_t__,scalar_t__) ;

uint64_t
spa_generate_guid(spa_t *spa)
{
 uint64_t guid = spa_get_random(-1ULL);

 if (spa != ((void*)0)) {
  while (guid == 0 || spa_guid_exists(spa_guid(spa), guid))
   guid = spa_get_random(-1ULL);
 } else {
  while (guid == 0 || spa_guid_exists(guid, 0))
   guid = spa_get_random(-1ULL);
 }

 return (guid);
}
