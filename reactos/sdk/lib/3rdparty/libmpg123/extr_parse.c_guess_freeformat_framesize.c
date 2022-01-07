
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; } ;
struct TYPE_11__ {long framesize; TYPE_2__* rd; TYPE_1__ rdat; } ;
typedef TYPE_3__ mpg123_handle ;
struct TYPE_10__ {int (* head_read ) (TYPE_3__*,unsigned long*) ;int (* head_shift ) (TYPE_3__*,unsigned long*) ;int (* back_bytes ) (TYPE_3__*,long) ;} ;


 unsigned long HDR_SAMEMASK ;
 int MAXFRAMESIZE ;
 scalar_t__ NOQUIET ;
 int PARSE_BAD ;
 int PARSE_GOOD ;
 int READER_BUFFERED ;
 int READER_SEEKABLE ;
 int error (char*) ;
 int stub1 (TYPE_3__*,unsigned long*) ;
 int stub2 (TYPE_3__*,unsigned long*) ;
 int stub3 (TYPE_3__*,long) ;
 int stub4 (TYPE_3__*,long) ;

__attribute__((used)) static int guess_freeformat_framesize(mpg123_handle *fr, unsigned long oldhead)
{
 long i;
 int ret;
 unsigned long head;
 if(!(fr->rdat.flags & (READER_SEEKABLE|READER_BUFFERED)))
 {
  if(NOQUIET) error("Cannot look for freeformat frame size with non-seekable and non-buffered stream!");

  return PARSE_BAD;
 }
 if((ret=fr->rd->head_read(fr,&head))<=0)
 return ret;


 for(i=4;i<MAXFRAMESIZE+4;i++)
 {
  if((ret=fr->rd->head_shift(fr,&head))<=0) return ret;


  if((head & HDR_SAMEMASK) == (oldhead & HDR_SAMEMASK))
  {
   fr->rd->back_bytes(fr,i+1);
   fr->framesize = i-3;
   return PARSE_GOOD;
  }
 }
 fr->rd->back_bytes(fr,i);
 return PARSE_BAD;
}
