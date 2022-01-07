
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_fstype (char*,int *) ;
 int smb_fstype ;
 int smb_shareops ;

void
libshare_smb_init(void)
{
 smb_fstype = register_fstype("smb", &smb_shareops);
}
