
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int filelen; int filept; int flags; void* iohandle; } ;
struct TYPE_6__ {TYPE_1__ rdat; int icy; } ;
typedef TYPE_2__ mpg123_handle ;


 int READER_HANDLEIO ;
 int clear_icy (int *) ;
 int open_finish (TYPE_2__*) ;

int open_stream_handle(mpg123_handle *fr, void *iohandle)
{
 clear_icy(&fr->icy);
 fr->rdat.filelen = -1;
 fr->rdat.filept = -1;
 fr->rdat.iohandle = iohandle;
 fr->rdat.flags = 0;
 fr->rdat.flags |= READER_HANDLEIO;

 return open_finish(fr);
}
