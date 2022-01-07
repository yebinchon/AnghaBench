
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fileoff; scalar_t__ firstpos; scalar_t__ pos; } ;
struct TYPE_7__ {int flags; TYPE_1__ buffer; int filepos; } ;
struct TYPE_8__ {TYPE_2__ rdat; } ;
typedef TYPE_3__ mpg123_handle ;


 int READER_BUFFERED ;
 int READER_SEEKABLE ;
 int SEEK_SET ;
 int stream_lseek (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void stream_rewind(mpg123_handle *fr)
{
 if(fr->rdat.flags & READER_SEEKABLE)
 {
  fr->rdat.filepos = stream_lseek(fr,0,SEEK_SET);

  fr->rdat.buffer.fileoff = fr->rdat.filepos;

 }

 if(fr->rdat.flags & READER_BUFFERED)
 {
  fr->rdat.buffer.pos = 0;
  fr->rdat.buffer.firstpos = 0;
  fr->rdat.filepos = fr->rdat.buffer.fileoff;
 }

}
