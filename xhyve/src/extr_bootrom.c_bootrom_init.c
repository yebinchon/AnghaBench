
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int ssize_t ;


 int MAX_BOOTROM_SIZE ;
 int O_RDONLY ;
 int XHYVE_PAGE_MASK ;
 int XHYVE_PAGE_SIZE ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ xh_setup_bootrom_memory (size_t,void**) ;

int
bootrom_init(const char *romfile)
{
 struct stat sbuf;
 ssize_t rlen;
 char *ptr;
 int fd, i, rv;

 rv = -1;
 fd = open(romfile, O_RDONLY);
 if (fd < 0) {
  fprintf(stderr, "Error opening bootrom \"%s\": %s\n",
      romfile, strerror(errno));
  goto done;
 }

        if (fstat(fd, &sbuf) < 0) {
  fprintf(stderr, "Could not fstat bootrom file \"%s\": %s\n",
      romfile, strerror(errno));
  goto done;
        }





 if (sbuf.st_size > MAX_BOOTROM_SIZE || sbuf.st_size < XHYVE_PAGE_SIZE) {
  fprintf(stderr, "Invalid bootrom size %lld\n", sbuf.st_size);
  goto done;
 }

 if (sbuf.st_size & XHYVE_PAGE_MASK) {
  fprintf(stderr, "Bootrom size %lld is not a multiple of the "
      "page size\n", sbuf.st_size);
  goto done;
 }


 if (xh_setup_bootrom_memory((size_t)sbuf.st_size, (void **)&ptr) != 0)
    {
        fprintf(stderr, "hv_setup_bootrom_memory failed\n");
  goto done;
    }


 for (i = 0; i < sbuf.st_size / XHYVE_PAGE_SIZE; i++) {
  rlen = read(fd, ptr + i * XHYVE_PAGE_SIZE, XHYVE_PAGE_SIZE);
  if (rlen != XHYVE_PAGE_SIZE) {
   fprintf(stderr, "Incomplete read of page %d of bootrom "
       "file %s: %ld bytes\n", i, romfile, rlen);
   goto done;
  }
 }
 rv = 0;
done:
 if (fd >= 0)
  close(fd);
 return (rv);
}
