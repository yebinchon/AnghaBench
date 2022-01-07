
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_5__ {scalar_t__ pos; scalar_t__ fileoff; } ;
struct TYPE_6__ {int flags; scalar_t__ filepos; TYPE_1__ buffer; } ;
struct TYPE_7__ {TYPE_2__ rdat; } ;
typedef TYPE_3__ mpg123_handle ;


 int READER_BUFFERED ;

__attribute__((used)) static off_t generic_tell(mpg123_handle *fr)
{

 if(fr->rdat.flags & READER_BUFFERED)
 fr->rdat.filepos = fr->rdat.buffer.fileoff+fr->rdat.buffer.pos;


 return fr->rdat.filepos;
}
