
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int libzfs_handle_t ;
 int EZFS_BADPROP ;
 int EZFS_BADVERSION ;
 int EZFS_DSREADONLY ;
 int EZFS_NOTSUP ;
 int EZFS_PROPSPACE ;
 int EZFS_VOLTOOBIG ;
 int TEXT_DOMAIN ;
 int ZFS_PROP_CHECKSUM ;
 int ZFS_PROP_COMPRESSION ;
 int ZFS_PROP_DEDUP ;
 int ZFS_PROP_DNODESIZE ;
 int ZFS_PROP_KEYLOCATION ;

 int ZFS_PROP_RECORDSIZE ;



 int ZFS_PROP_VOLSIZE ;
 int ZPROP_INVAL ;
 int dgettext (int ,char*) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,int ) ;
 int zfs_standard_error (int *,int const,char*) ;

void
zfs_setprop_error(libzfs_handle_t *hdl, zfs_prop_t prop, int err,
    char *errbuf)
{
 switch (err) {

 case 136:





  switch (prop) {
  case 131:
  case 130:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "size is less than current used or "
       "reserved space"));
   (void) zfs_error(hdl, EZFS_PROPSPACE, errbuf);
   break;

  case 128:
  case 129:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "size is greater than available space"));
   (void) zfs_error(hdl, EZFS_PROPSPACE, errbuf);
   break;

  default:
   (void) zfs_standard_error(hdl, err, errbuf);
   break;
  }
  break;

 case 138:
  (void) zfs_standard_error(hdl, 138, errbuf);
  break;

 case 132:
  (void) zfs_error(hdl, EZFS_DSREADONLY, errbuf);
  break;

 case 140:
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "property value too long"));
  (void) zfs_error(hdl, EZFS_BADPROP, errbuf);
  break;

 case 135:
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "pool and or dataset must be upgraded to set this "
      "property or value"));
  (void) zfs_error(hdl, EZFS_BADVERSION, errbuf);
  break;

 case 133:
  if (prop == ZFS_PROP_COMPRESSION ||
      prop == ZFS_PROP_DNODESIZE ||
      prop == ZFS_PROP_RECORDSIZE) {
   (void) zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "property setting is not allowed on "
       "bootable datasets"));
   (void) zfs_error(hdl, EZFS_NOTSUP, errbuf);
  } else if (prop == ZFS_PROP_CHECKSUM ||
      prop == ZFS_PROP_DEDUP) {
   (void) zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "property setting is not allowed on "
       "root pools"));
   (void) zfs_error(hdl, EZFS_NOTSUP, errbuf);
  } else {
   (void) zfs_standard_error(hdl, err, errbuf);
  }
  break;

 case 137:
  if (prop == ZPROP_INVAL) {
   (void) zfs_error(hdl, EZFS_BADPROP, errbuf);
  } else {
   (void) zfs_standard_error(hdl, err, errbuf);
  }
  break;

 case 139:
  if (prop == ZFS_PROP_KEYLOCATION) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "keylocation may only be set on encryption roots"));
   (void) zfs_error(hdl, EZFS_BADPROP, errbuf);
  } else {
   (void) zfs_standard_error(hdl, err, errbuf);
  }
  break;

 case 134:
 default:
  (void) zfs_standard_error(hdl, err, errbuf);
 }
}
