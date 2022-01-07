
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_5__ {int last_formats_length; int * last_formats; } ;
struct TYPE_6__ {TYPE_1__ cliprdr; } ;
typedef TYPE_2__ RDPCLIENT ;


 int CLIPRDR_FORMAT_ANNOUNCE ;
 int CLIPRDR_REQUEST ;
 int DEBUG_CLIPBOARD (char*) ;
 int cliprdr_send_packet (TYPE_2__*,int ,int ,int *,int ) ;
 int memcpy (int *,int *,int ) ;
 int xfree (int *) ;
 int * xmalloc (int ) ;

void
cliprdr_send_native_format_announce(RDPCLIENT * This, uint8 * formats_data, uint32 formats_data_length)
{
 DEBUG_CLIPBOARD(("cliprdr_send_native_format_announce\n"));

 cliprdr_send_packet(This, CLIPRDR_FORMAT_ANNOUNCE, CLIPRDR_REQUEST, formats_data,
       formats_data_length);

 if (formats_data != This->cliprdr.last_formats)
 {
  if (This->cliprdr.last_formats)
   xfree(This->cliprdr.last_formats);

  This->cliprdr.last_formats = xmalloc(formats_data_length);
  memcpy(This->cliprdr.last_formats, formats_data, formats_data_length);
  This->cliprdr.last_formats_length = formats_data_length;
 }
}
