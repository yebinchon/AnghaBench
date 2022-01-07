
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int FTAG ;
 int spa_close (int *,int ) ;
 scalar_t__ spa_open (char const*,int **,int ) ;
 int spa_version (int *) ;

__attribute__((used)) static int
zfs_earlier_version(const char *name, int version)
{
 spa_t *spa;

 if (spa_open(name, &spa, FTAG) == 0) {
  if (spa_version(spa) < version) {
   spa_close(spa, FTAG);
   return (1);
  }
  spa_close(spa, FTAG);
 }
 return (0);
}
