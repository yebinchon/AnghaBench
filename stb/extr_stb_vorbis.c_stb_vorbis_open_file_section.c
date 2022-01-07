
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int stb_vorbis_alloc ;
struct TYPE_9__ {unsigned int stream_len; int close_on_free; int error; scalar_t__ f_start; int * f; } ;
typedef TYPE_1__ stb_vorbis ;
typedef int FILE ;


 scalar_t__ ftell (int *) ;
 scalar_t__ start_decoder (TYPE_1__*) ;
 TYPE_1__* vorbis_alloc (TYPE_1__*) ;
 int vorbis_deinit (TYPE_1__*) ;
 int vorbis_init (TYPE_1__*,int const*) ;
 int vorbis_pump_first_frame (TYPE_1__*) ;

stb_vorbis * stb_vorbis_open_file_section(FILE *file, int close_on_free, int *error, const stb_vorbis_alloc *alloc, unsigned int length)
{
   stb_vorbis *f, p;
   vorbis_init(&p, alloc);
   p.f = file;
   p.f_start = (uint32) ftell(file);
   p.stream_len = length;
   p.close_on_free = close_on_free;
   if (start_decoder(&p)) {
      f = vorbis_alloc(&p);
      if (f) {
         *f = p;
         vorbis_pump_first_frame(f);
         return f;
      }
   }
   if (error) *error = p.error;
   vorbis_deinit(&p);
   return ((void*)0);
}
