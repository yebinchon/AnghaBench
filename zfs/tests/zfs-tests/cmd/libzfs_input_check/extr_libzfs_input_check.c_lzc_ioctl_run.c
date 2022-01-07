
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_ioc_t ;
struct TYPE_3__ {char* member_0; char* zc_name; size_t zc_nvlist_src_size; void* zc_nvlist_dst; int zc_nvlist_dst_size; void* zc_nvlist_src; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef void* uint64_t ;
typedef int nvlist_t ;


 int B_TRUE ;
 int MAX (size_t,int) ;



 char* active_test ;
 int errno ;
 char* fnvlist_pack (int *,size_t*) ;
 int fnvlist_pack_free (char*,size_t) ;
 int fprintf (int ,char*,char*,char const*,int,int) ;
 int free (void*) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 scalar_t__ malloc (int ) ;
 int stderr ;
 int strlcpy (char*,char const*,int) ;
 int unexpected_failures ;
 int zfs_fd ;

__attribute__((used)) static void
lzc_ioctl_run(zfs_ioc_t ioc, const char *name, nvlist_t *innvl, int expected)
{
 zfs_cmd_t zc = {"\0"};
 char *packed = ((void*)0);
 const char *variant;
 size_t size = 0;
 int error = 0;

 switch (expected) {
 case 128:
  variant = "unsupported input";
  break;
 case 129:
  variant = "missing input";
  break;
 case 130:
  variant = "invalid input type";
  break;
 default:
  variant = "valid input";
  break;
 }

 packed = fnvlist_pack(innvl, &size);
 (void) strlcpy(zc.zc_name, name, sizeof (zc.zc_name));
 zc.zc_name[sizeof (zc.zc_name) - 1] = '\0';
 zc.zc_nvlist_src = (uint64_t)(uintptr_t)packed;
 zc.zc_nvlist_src_size = size;
 zc.zc_nvlist_dst_size = MAX(size * 2, 128 * 1024);
 zc.zc_nvlist_dst = (uint64_t)(uintptr_t)malloc(zc.zc_nvlist_dst_size);

 if (ioctl(zfs_fd, ioc, &zc) != 0)
  error = errno;

 if (error != expected) {
  unexpected_failures = B_TRUE;
  (void) fprintf(stderr, "%s: Unexpected result with %s, "
      "error %d (expecting %d)\n",
      active_test, variant, error, expected);
 }

 fnvlist_pack_free(packed, size);
 free((void *)(uintptr_t)zc.zc_nvlist_dst);
}
