
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_5__ {scalar_t__ filepos; } ;
struct TYPE_4__ {int err; TYPE_3__ rdat; } ;
typedef TYPE_1__ mpg123_handle ;


 int MPG123_LSEEK_FAILED ;
 scalar_t__ READER_ERROR ;
 scalar_t__ io_seek (TYPE_3__*,scalar_t__,int) ;

__attribute__((used)) static off_t stream_lseek(mpg123_handle *fr, off_t pos, int whence)
{
 off_t ret;
 ret = io_seek(&fr->rdat, pos, whence);
 if (ret >= 0) fr->rdat.filepos = ret;
 else
 {
  fr->err = MPG123_LSEEK_FAILED;
  ret = READER_ERROR;
 }
 return ret;
}
