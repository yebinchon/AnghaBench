
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int eof; } ;
typedef TYPE_1__ vorb ;
typedef enum STBVorbisError { ____Placeholder_STBVorbisError } STBVorbisError ;


 int VORBIS_need_more_data ;

__attribute__((used)) static int error(vorb *f, enum STBVorbisError e)
{
   f->error = e;
   if (!f->eof && e != VORBIS_need_more_data) {
      f->error=e;
   }
   return 0;
}
