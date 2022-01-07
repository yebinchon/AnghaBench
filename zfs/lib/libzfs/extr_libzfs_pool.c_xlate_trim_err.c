
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EZFS_BADDEV ;
 int EZFS_NODEVICE ;
 int EZFS_NO_TRIM ;
 int EZFS_TRIMMING ;
 int EZFS_TRIM_NOTSUP ;

__attribute__((used)) static int
xlate_trim_err(int err)
{
 switch (err) {
 case 131:
  return (EZFS_NODEVICE);
 case 132:
 case 129:
  return (EZFS_BADDEV);
 case 133:
  return (EZFS_TRIMMING);
 case 128:
  return (EZFS_NO_TRIM);
 case 130:
  return (EZFS_TRIM_NOTSUP);
 }
 return (err);
}
