
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int filelen; int filept; int flags; } ;
struct TYPE_6__ {TYPE_1__ rdat; int err; int icy; } ;
typedef TYPE_2__ mpg123_handle ;


 int MPG123_BAD_FILE ;
 int MPG123_ERR ;
 scalar_t__ NOQUIET ;
 int O_BINARY ;
 int O_RDONLY ;
 int READER_FD_OPENED ;
 int clear_icy (int *) ;
 int compat_open (char const*,int) ;
 int errno ;
 int error2 (char*,char const*,int ) ;
 int open_finish (TYPE_2__*) ;
 int strerror (int ) ;

int open_stream(mpg123_handle *fr, const char *bs_filenam, int fd)
{
 int filept_opened = 1;
 int filept;

 clear_icy(&fr->icy);

 if(!bs_filenam)
 {
  filept = fd;
  filept_opened = 0;
 }



 else if((filept = compat_open(bs_filenam, O_RDONLY|(0))) < 0)
 {
  if(NOQUIET) error2("Cannot open file %s: %s", bs_filenam, strerror(errno));
  fr->err = MPG123_BAD_FILE;
  return MPG123_ERR;
 }


 fr->rdat.filelen = -1;
 fr->rdat.filept = filept;
 fr->rdat.flags = 0;
 if(filept_opened) fr->rdat.flags |= READER_FD_OPENED;

 return open_finish(fr);
}
