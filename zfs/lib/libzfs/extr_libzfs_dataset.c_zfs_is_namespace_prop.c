
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
__attribute__((used)) static boolean_t
zfs_is_namespace_prop(zfs_prop_t prop)
{
 switch (prop) {

 case 135:
 case 130:
 case 134:
 case 133:
 case 129:
 case 131:
 case 128:
 case 132:
  return (B_TRUE);

 default:
  return (B_FALSE);
 }
}
