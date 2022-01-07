
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_list_entry {int dummy; } ;
struct udev_device {int dummy; } ;
typedef int devbyid ;


 char* DEV_BYID_PATH ;
 int ENODATA ;
 int MAXPATHLEN ;
 int snprintf (char*,int,char*,char const*,...) ;
 int stpncpy (char*,char const*,size_t) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;
 struct udev_list_entry* udev_device_get_devlinks_list_entry (struct udev_device*) ;
 char* udev_device_get_property_value (struct udev_device*,char*) ;
 char* udev_list_entry_get_name (struct udev_list_entry*) ;
 struct udev_list_entry* udev_list_entry_get_next (struct udev_list_entry*) ;

__attribute__((used)) static int
udev_device_get_devid(struct udev_device *dev, char *bufptr, size_t buflen)
{
 struct udev_list_entry *entry;
 const char *bus;
 char devbyid[MAXPATHLEN];


 bus = udev_device_get_property_value(dev, "ID_BUS");

 if (bus == ((void*)0)) {
  const char *dm_uuid;






  dm_uuid = udev_device_get_property_value(dev, "DM_UUID");
  if (dm_uuid != ((void*)0)) {
   (void) snprintf(bufptr, buflen, "dm-uuid-%s", dm_uuid);
   return (0);
  }
  return (ENODATA);
 }






 (void) snprintf(devbyid, sizeof (devbyid), "%s%s-", DEV_BYID_PATH, bus);
 entry = udev_device_get_devlinks_list_entry(dev);
 while (entry != ((void*)0)) {
  const char *name;

  name = udev_list_entry_get_name(entry);
  if (strncmp(name, devbyid, strlen(devbyid)) == 0) {
   name += strlen(DEV_BYID_PATH);
   (void) stpncpy(bufptr, name, buflen - 1);
   bufptr[buflen - 1] = '\0';
   return (0);
  }
  entry = udev_list_entry_get_next(entry);
 }

 return (ENODATA);
}
