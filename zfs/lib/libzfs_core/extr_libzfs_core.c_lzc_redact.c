
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ZFS_IOC_REDACT ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int lzc_ioctl (int ,char const*,int *,int *) ;

int
lzc_redact(const char *snapshot, const char *bookname, nvlist_t *snapnv)
{
 nvlist_t *args = fnvlist_alloc();
 fnvlist_add_string(args, "bookname", bookname);
 fnvlist_add_nvlist(args, "snapnv", snapnv);
 int error = lzc_ioctl(ZFS_IOC_REDACT, snapshot, args, ((void*)0));
 fnvlist_free(args);
 return (error);
}
