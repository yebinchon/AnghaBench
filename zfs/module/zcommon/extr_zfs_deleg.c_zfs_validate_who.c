
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ZFS_DELEG_DESCENDENT ;


 char ZFS_DELEG_FIELD_SEP_CHR ;


 char ZFS_DELEG_LOCAL ;
 char ZFS_DELEG_NA ;




 int isdigit (char) ;
 int permset_namecheck (char*,int *,int *) ;

__attribute__((used)) static int
zfs_validate_who(char *who)
{
 char *p;

 if (who[2] != ZFS_DELEG_FIELD_SEP_CHR)
  return (-1);

 switch (who[0]) {
 case 129:
 case 133:
 case 128:
 case 132:
  if (who[1] != ZFS_DELEG_LOCAL && who[1] != ZFS_DELEG_DESCENDENT)
   return (-1);
  for (p = &who[3]; *p; p++)
   if (!isdigit(*p))
    return (-1);
  break;

 case 131:
 case 130:
  if (who[1] != ZFS_DELEG_NA)
   return (-1);
  return (permset_namecheck(&who[3], ((void*)0), ((void*)0)));

 case 137:
 case 136:
  if (who[1] != ZFS_DELEG_NA)
   return (-1);
  if (who[3] != '\0')
   return (-1);
  break;

 case 135:
 case 134:
  if (who[1] != ZFS_DELEG_LOCAL && who[1] != ZFS_DELEG_DESCENDENT)
   return (-1);
  if (who[3] != '\0')
   return (-1);
  break;

 default:
  return (-1);
 }

 return (0);
}
