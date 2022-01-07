
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef scalar_t__ uint16 ;
struct TYPE_15__ {int last_formats_length; int last_formats; } ;
struct TYPE_17__ {TYPE_1__ cliprdr; } ;
struct TYPE_16__ {int * p; } ;
typedef TYPE_2__* STREAM ;
typedef TYPE_3__ RDPCLIENT ;





 scalar_t__ CLIPRDR_ERROR ;


 int CLIPRDR_RESPONSE ;
 int DEBUG_CLIPBOARD (char*) ;
 int cliprdr_send_native_format_announce (TYPE_3__*,int ,int ) ;
 int cliprdr_send_packet (TYPE_3__*,int const,int ,int *,int ) ;
 int in_uint16_le (TYPE_2__*,scalar_t__) ;
 int in_uint32_le (TYPE_2__*,int ) ;
 int ui_clip_format_announce (TYPE_3__*,int *,int ) ;
 int ui_clip_handle_data (TYPE_3__*,int *,int ) ;
 int ui_clip_request_data (TYPE_3__*,int ) ;
 int ui_clip_request_failed (TYPE_3__*) ;
 int ui_clip_sync (TYPE_3__*) ;
 int unimpl (char*,scalar_t__) ;

__attribute__((used)) static void
cliprdr_process(RDPCLIENT * This, STREAM s)
{
 uint16 type, status;
 uint32 length, format;
 uint8 *data;

 in_uint16_le(s, type);
 in_uint16_le(s, status);
 in_uint32_le(s, length);
 data = s->p;

 DEBUG_CLIPBOARD(("CLIPRDR recv: type=%d, status=%d, length=%d\n", type, status, length));

 if (status == CLIPRDR_ERROR)
 {
  switch (type)
  {
   case 129:


    cliprdr_send_native_format_announce(This, This->cliprdr.last_formats,
            This->cliprdr.last_formats_length);
    break;
   case 130:
    ui_clip_request_failed(This);
    break;
   default:
    DEBUG_CLIPBOARD(("CLIPRDR error (type=%d)\n", type));
  }

  return;
 }

 switch (type)
 {
  case 132:
   ui_clip_sync(This);
   break;
  case 128:
   ui_clip_format_announce(This, data, length);
   cliprdr_send_packet(This, 129, CLIPRDR_RESPONSE, ((void*)0), 0);
   return;
  case 129:
   break;
  case 131:
   in_uint32_le(s, format);
   ui_clip_request_data(This, format);
   break;
  case 130:
   ui_clip_handle_data(This, data, length);
   break;
  case 7:
   break;
  default:
   unimpl("CLIPRDR packet type %d\n", type);
 }
}
