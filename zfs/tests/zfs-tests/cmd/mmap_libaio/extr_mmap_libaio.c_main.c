
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iocb {int dummy; } ;


 char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_CREAT ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int S_IRUSR ;
 int S_IWUSR ;
 scalar_t__ close (int) ;
 int do_sync_io (struct iocb*) ;
 int err (int,char*) ;
 scalar_t__ ftruncate (int,int) ;
 int getpagesize () ;
 int io_ctx ;
 int io_prep_pread (struct iocb*,int,char*,int,int ) ;
 int io_prep_pwrite (struct iocb*,int,char*,int,int ) ;
 scalar_t__ io_queue_init (int,int *) ;
 scalar_t__ io_queue_release (int ) ;
 char* mmap (int ,int,int,int ,int,int ) ;
 int open (char*,int,int) ;
 int strtol (char*,int *,int ) ;

int
main(int argc, char **argv)
{
 char *buf;
 int page_size = getpagesize();
 int buf_size = strtol(argv[2], ((void*)0), 0);
 int rwfd;
 struct iocb iocb;

 if (io_queue_init(1024, &io_ctx))
  err(1, "io_queue_init failed");

 rwfd = open(argv[1], O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
 if (rwfd < 0)
  err(1, "open failed");

 if (ftruncate(rwfd, buf_size) < 0)
  err(1, "ftruncate failed");

 buf = mmap(0, page_size, PROT_READ | PROT_WRITE, MAP_SHARED, rwfd, 0);
 if (buf == MAP_FAILED)
  err(1, "mmap failed");

 (void) io_prep_pwrite(&iocb, rwfd, buf, buf_size, 0);
 do_sync_io(&iocb);

 (void) io_prep_pread(&iocb, rwfd, buf, buf_size, 0);
 do_sync_io(&iocb);

 if (close(rwfd))
  err(1, "close failed");

 if (io_queue_release(io_ctx) != 0)
  err(1, "io_queue_release failed");

 return (0);
}
