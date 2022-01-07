
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int libshare_nfs_init () ;
 int libshare_smb_init () ;

__attribute__((used)) __attribute__((constructor)) static void
libshare_init(void)
{
 libshare_nfs_init();
 libshare_smb_init();
}
