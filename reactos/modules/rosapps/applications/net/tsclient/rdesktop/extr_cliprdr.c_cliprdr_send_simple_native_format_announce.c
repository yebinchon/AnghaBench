
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int buffer ;
typedef int RDPCLIENT ;


 int DEBUG_CLIPBOARD (char*) ;
 int buf_out_uint32 (int *,int ) ;
 int cliprdr_send_native_format_announce (int *,int *,int) ;
 int memset (int *,int ,int) ;

void
cliprdr_send_simple_native_format_announce(RDPCLIENT * This, uint32 format)
{
 uint8 buffer[36];

 DEBUG_CLIPBOARD(("cliprdr_send_simple_native_format_announce\n"));

 buf_out_uint32(buffer, format);
 memset(buffer + 4, 0, sizeof(buffer) - 4);
 cliprdr_send_native_format_announce(This, buffer, sizeof(buffer));
}
