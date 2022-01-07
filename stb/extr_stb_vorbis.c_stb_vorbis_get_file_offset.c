
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ f_start; int f; scalar_t__ stream_start; scalar_t__ stream; scalar_t__ push_mode; } ;
typedef TYPE_1__ stb_vorbis ;


 scalar_t__ USE_MEMORY (TYPE_1__*) ;
 scalar_t__ ftell (int ) ;

unsigned int stb_vorbis_get_file_offset(stb_vorbis *f)
{

   if (f->push_mode) return 0;

   if (USE_MEMORY(f)) return (unsigned int) (f->stream - f->stream_start);

   return (unsigned int) (ftell(f->f) - f->f_start);

}
