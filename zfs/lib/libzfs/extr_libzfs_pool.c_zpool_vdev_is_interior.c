
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int VDEV_TYPE_MIRROR ;
 int VDEV_TYPE_RAIDZ ;
 int VDEV_TYPE_REPLACING ;
 int VDEV_TYPE_SPARE ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static boolean_t
zpool_vdev_is_interior(const char *name)
{
 if (strncmp(name, VDEV_TYPE_RAIDZ, strlen(VDEV_TYPE_RAIDZ)) == 0 ||
     strncmp(name, VDEV_TYPE_SPARE, strlen(VDEV_TYPE_SPARE)) == 0 ||
     strncmp(name,
     VDEV_TYPE_REPLACING, strlen(VDEV_TYPE_REPLACING)) == 0 ||
     strncmp(name, VDEV_TYPE_MIRROR, strlen(VDEV_TYPE_MIRROR)) == 0)
  return (B_TRUE);
 return (B_FALSE);
}
