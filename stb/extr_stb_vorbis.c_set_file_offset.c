
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eof; scalar_t__ stream_start; scalar_t__ stream_end; scalar_t__ stream; unsigned int f_start; int f; scalar_t__ push_mode; } ;
typedef TYPE_1__ stb_vorbis ;


 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ USE_MEMORY (TYPE_1__*) ;
 int fseek (int ,unsigned int,int ) ;

__attribute__((used)) static int set_file_offset(stb_vorbis *f, unsigned int loc)
{

   if (f->push_mode) return 0;

   f->eof = 0;
   if (USE_MEMORY(f)) {
      if (f->stream_start + loc >= f->stream_end || f->stream_start + loc < f->stream_start) {
         f->stream = f->stream_end;
         f->eof = 1;
         return 0;
      } else {
         f->stream = f->stream_start + loc;
         return 1;
      }
   }

   if (loc + f->f_start < loc || loc >= 0x80000000) {
      loc = 0x7fffffff;
      f->eof = 1;
   } else {
      loc += f->f_start;
   }
   if (!fseek(f->f, loc, SEEK_SET))
      return 1;
   f->eof = 1;
   fseek(f->f, f->f_start, SEEK_END);
   return 0;

}
