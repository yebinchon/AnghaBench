
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int alloc_buffer_length_in_bytes; } ;
typedef TYPE_1__ stb_vorbis_alloc ;
struct TYPE_7__ {int temp_offset; int page_crc_tests; int * f; int close_on_free; int * codebooks; int * stream; int error; scalar_t__ eof; TYPE_1__ alloc; } ;
typedef TYPE_2__ stb_vorbis ;


 int FALSE ;
 int VORBIS__no_error ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void vorbis_init(stb_vorbis *p, const stb_vorbis_alloc *z)
{
   memset(p, 0, sizeof(*p));
   if (z) {
      p->alloc = *z;
      p->alloc.alloc_buffer_length_in_bytes = (p->alloc.alloc_buffer_length_in_bytes+3) & ~3;
      p->temp_offset = p->alloc.alloc_buffer_length_in_bytes;
   }
   p->eof = 0;
   p->error = VORBIS__no_error;
   p->stream = ((void*)0);
   p->codebooks = ((void*)0);
   p->page_crc_tests = -1;

   p->close_on_free = FALSE;
   p->f = ((void*)0);

}
