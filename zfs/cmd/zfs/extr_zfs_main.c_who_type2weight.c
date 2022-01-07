
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_deleg_who_type_t ;
__attribute__((used)) static int
who_type2weight(zfs_deleg_who_type_t who_type)
{
 int res;
 switch (who_type) {
  case 130:
  case 131:
   res = 0;
   break;
  case 136:
  case 137:
   res = 1;
   break;
  case 128:
  case 129:
   res = 2;
   break;
  case 132:
  case 133:
   res = 3;
   break;
  case 134:
  case 135:
   res = 4;
   break;
  default:
   res = -1;
 }

 return (res);
}
