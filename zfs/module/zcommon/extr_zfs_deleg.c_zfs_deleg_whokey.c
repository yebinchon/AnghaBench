
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_deleg_who_type_t ;
typedef int uint64_t ;
typedef int longlong_t ;


 int ASSERT (int) ;




 int ZFS_DELEG_FIELD_SEP_CHR ;






 int ZFS_MAX_DELEG_NAME ;
 int snprintf (char*,int,char*,int,char,...) ;

void
zfs_deleg_whokey(char *attr, zfs_deleg_who_type_t type,
    char inheritchr, void *data)
{
 int len = ZFS_MAX_DELEG_NAME;
 uint64_t *id = data;

 switch (type) {
 case 129:
 case 133:
 case 128:
 case 132:
  (void) snprintf(attr, len, "%c%c%c%lld", type, inheritchr,
      ZFS_DELEG_FIELD_SEP_CHR, (longlong_t)*id);
  break;
 case 130:
 case 131:
  (void) snprintf(attr, len, "%c-%c%s", type,
      ZFS_DELEG_FIELD_SEP_CHR, (char *)data);
  break;
 case 137:
 case 136:
  (void) snprintf(attr, len, "%c-%c", type,
      ZFS_DELEG_FIELD_SEP_CHR);
  break;
 case 135:
 case 134:
  (void) snprintf(attr, len, "%c%c%c", type, inheritchr,
      ZFS_DELEG_FIELD_SEP_CHR);
  break;
 default:
  ASSERT(!"bad zfs_deleg_who_type_t");
 }
}
