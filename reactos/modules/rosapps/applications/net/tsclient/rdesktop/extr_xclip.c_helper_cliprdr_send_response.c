
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_6__ {scalar_t__ rdp_clipboard_request_format; int rdesktop_is_selection_owner; } ;
struct TYPE_7__ {TYPE_1__ xclip; } ;
typedef TYPE_2__ RDPCLIENT ;


 int RDP_CF_TEXT ;
 int cliprdr_send_data (TYPE_2__*,int *,int ) ;
 int cliprdr_send_simple_native_format_announce (TYPE_2__*,int ) ;

__attribute__((used)) static void
helper_cliprdr_send_response(RDPCLIENT * This, uint8 * data, uint32 length)
{
 if (This->xclip.rdp_clipboard_request_format != 0)
 {
  cliprdr_send_data(This, data, length);
  This->xclip.rdp_clipboard_request_format = 0;
  if (!This->xclip.rdesktop_is_selection_owner)
   cliprdr_send_simple_native_format_announce(This, RDP_CF_TEXT);
 }
}
