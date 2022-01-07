
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ timeout_sec; int filelen; int flags; int buffer; int fullread; scalar_t__ filepos; int * lseek; int * r_lseek; int * r_read; int * read; int fdread; int filept; } ;
struct TYPE_6__ {scalar_t__ timeout; scalar_t__ icy_interval; int flags; } ;
struct TYPE_8__ {TYPE_2__ rdat; int * rd; int err; TYPE_1__ p; int metaflags; scalar_t__ id3buf; } ;
typedef TYPE_3__ mpg123_handle ;


 int F_GETFL ;
 int F_SETFL ;
 int MPG123_FORCE_SEEKABLE ;
 int MPG123_MISSING_FEATURE ;
 int MPG123_NEW_ID3 ;
 int MPG123_NO_PEEK_END ;
 int MPG123_SEEKBUFFER ;
 scalar_t__ NOQUIET ;
 int O_NONBLOCK ;
 int READER_BUFFERED ;
 size_t READER_BUF_ICY_STREAM ;
 size_t READER_BUF_STREAM ;
 size_t READER_ICY_STREAM ;
 int READER_ID3TAG ;
 int READER_NONBLOCK ;
 int READER_SEEKABLE ;
 size_t READER_STREAM ;
 int bc_init (int *) ;
 int error (char*) ;
 int fcntl (int ,int ,...) ;
 int get_fileinfo (TYPE_3__*) ;
 int icy_fullread ;
 int * nix_lseek ;
 int plain_fullread ;
 int plain_read ;
 int * posix_lseek ;
 int * posix_read ;
 int * readers ;
 int strncmp (char*,char*,int) ;
 int timeout_read ;

__attribute__((used)) static int default_init(mpg123_handle *fr)
{
 fr->rdat.fdread = plain_read;

 fr->rdat.read = fr->rdat.r_read != ((void*)0) ? fr->rdat.r_read : posix_read;
 fr->rdat.lseek = fr->rdat.r_lseek != ((void*)0) ? fr->rdat.r_lseek : posix_lseek;


 if(fr->p.icy_interval > 0) fr->rdat.lseek = nix_lseek;


 fr->rdat.filelen = fr->p.flags & MPG123_NO_PEEK_END ? -1 : get_fileinfo(fr);
 fr->rdat.filepos = 0;
 if(fr->p.flags & MPG123_FORCE_SEEKABLE)
  fr->rdat.flags |= READER_SEEKABLE;





 if(fr->rdat.filelen >= 0)
 {
  fr->rdat.flags |= READER_SEEKABLE;
  if(!strncmp((char*)fr->id3buf,"TAG",3))
  {
   fr->rdat.flags |= READER_ID3TAG;
   fr->metaflags |= MPG123_NEW_ID3;
  }
 }

 else if(fr->p.flags & MPG123_SEEKBUFFER)
 {





  if (fr->rd == &readers[READER_STREAM])
  {
   fr->rd = &readers[READER_BUF_STREAM];
   fr->rdat.fullread = plain_fullread;
  }

  else if(fr->rd == &readers[READER_ICY_STREAM])
  {
   fr->rd = &readers[READER_BUF_ICY_STREAM];
   fr->rdat.fullread = icy_fullread;
  }

  else
  {
   if(NOQUIET) error("mpg123 Programmer's fault: invalid reader");
   return -1;
  }
  bc_init(&fr->rdat.buffer);
  fr->rdat.filelen = 0;
  fr->rdat.flags |= READER_BUFFERED;

 }
 return 0;
}
