
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int * iohandle; int (* cleanup_handle ) (int *) ;int buffer; scalar_t__ filept; } ;
struct TYPE_5__ {TYPE_1__ rdat; } ;
typedef TYPE_2__ mpg123_handle ;


 int READER_BUFFERED ;
 int READER_FD_OPENED ;
 int READER_HANDLEIO ;
 int bc_reset (int *) ;
 int compat_close (scalar_t__) ;
 int stub1 (int *) ;

__attribute__((used)) static void stream_close(mpg123_handle *fr)
{
 if(fr->rdat.flags & READER_FD_OPENED) compat_close(fr->rdat.filept);

 fr->rdat.filept = 0;


 if(fr->rdat.flags & READER_BUFFERED) bc_reset(&fr->rdat.buffer);

 if(fr->rdat.flags & READER_HANDLEIO)
 {
  if(fr->rdat.cleanup_handle != ((void*)0)) fr->rdat.cleanup_handle(fr->rdat.iohandle);

  fr->rdat.iohandle = ((void*)0);
 }
}
