
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int FM_CLASS ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static const char *
fmd_fault_mkcode(nvlist_t *fault)
{
 char *class, *code = "-";




 if (nvlist_lookup_string(fault, FM_CLASS, &class) == 0) {
  if (strcmp(class, "fault.fs.zfs.vdev.io") == 0)
   code = "ZFS-8000-FD";
  else if (strcmp(class, "fault.fs.zfs.vdev.checksum") == 0)
   code = "ZFS-8000-GH";
  else if (strcmp(class, "fault.fs.zfs.io_failure_wait") == 0)
   code = "ZFS-8000-HC";
  else if (strcmp(class, "fault.fs.zfs.io_failure_continue") == 0)
   code = "ZFS-8000-JQ";
  else if (strcmp(class, "fault.fs.zfs.log_replay") == 0)
   code = "ZFS-8000-K4";
  else if (strcmp(class, "fault.fs.zfs.pool") == 0)
   code = "ZFS-8000-CS";
  else if (strcmp(class, "fault.fs.zfs.device") == 0)
   code = "ZFS-8000-D3";

 }
 return (code);
}
