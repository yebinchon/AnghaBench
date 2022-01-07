
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned char const uint8 ;
typedef int stb_vorbis_alloc ;
struct TYPE_8__ {unsigned char const* stream; unsigned char const* stream_end; int error; scalar_t__ eof; int push_mode; } ;
typedef TYPE_1__ stb_vorbis ;


 int TRUE ;
 int VORBIS_need_more_data ;
 int start_decoder (TYPE_1__*) ;
 TYPE_1__* vorbis_alloc (TYPE_1__*) ;
 int vorbis_deinit (TYPE_1__*) ;
 int vorbis_init (TYPE_1__*,int const*) ;

stb_vorbis *stb_vorbis_open_pushdata(
         const unsigned char *data, int data_len,
         int *data_used,
         int *error, const stb_vorbis_alloc *alloc)
{
   stb_vorbis *f, p;
   vorbis_init(&p, alloc);
   p.stream = (uint8 *) data;
   p.stream_end = (uint8 *) data + data_len;
   p.push_mode = TRUE;
   if (!start_decoder(&p)) {
      if (p.eof)
         *error = VORBIS_need_more_data;
      else
         *error = p.error;
      return ((void*)0);
   }
   f = vorbis_alloc(&p);
   if (f) {
      *f = p;
      *data_used = (int) (f->stream - data);
      *error = 0;
      return f;
   } else {
      vorbis_deinit(&p);
      return ((void*)0);
   }
}
