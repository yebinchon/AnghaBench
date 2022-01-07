
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int ZFS_DEV ;
 int close (scalar_t__) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int libzfs_core_fini () ;
 int libzfs_core_init () ;
 scalar_t__ open (int ,int ) ;
 int stderr ;
 char* strerror (int ) ;
 int unexpected_failures ;
 int validate_ioc_values () ;
 scalar_t__ zfs_fd ;
 int zfs_ioc_input_tests (char const*) ;

int
main(int argc, const char *argv[])
{
 if (argc != 2) {
  (void) fprintf(stderr, "usage: %s <pool>\n", argv[0]);
  exit(2);
 }

 if (!validate_ioc_values()) {
  (void) fprintf(stderr, "WARNING: zfs_ioc_t has binary "
      "incompatible command values\n");
  exit(3);
 }

 (void) libzfs_core_init();
 zfs_fd = open(ZFS_DEV, O_RDWR);
 if (zfs_fd < 0) {
  (void) fprintf(stderr, "open: %s\n", strerror(errno));
  libzfs_core_fini();
  exit(2);
 }

 zfs_ioc_input_tests(argv[1]);

 (void) close(zfs_fd);
 libzfs_core_fini();

 return (unexpected_failures);
}
