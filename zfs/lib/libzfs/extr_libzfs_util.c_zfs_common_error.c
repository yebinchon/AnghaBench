
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int libzfs_handle_t ;
 int EZFS_FAULT ;
 int EZFS_INTR ;
 int EZFS_IO ;
 int EZFS_NODELEGATION ;
 int EZFS_PERM ;
 int zfs_verror (int *,int ,char const*,int ) ;

__attribute__((used)) static int
zfs_common_error(libzfs_handle_t *hdl, int error, const char *fmt,
    va_list ap)
{
 switch (error) {
 case 128:
 case 133:
  zfs_verror(hdl, EZFS_PERM, fmt, ap);
  return (-1);

 case 132:
  zfs_verror(hdl, EZFS_NODELEGATION, fmt, ap);
  return (-1);

 case 129:
  zfs_verror(hdl, EZFS_IO, fmt, ap);
  return (-1);

 case 131:
  zfs_verror(hdl, EZFS_FAULT, fmt, ap);
  return (-1);

 case 130:
  zfs_verror(hdl, EZFS_INTR, fmt, ap);
  return (-1);
 }

 return (0);
}
