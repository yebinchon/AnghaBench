
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int buffer ;
typedef int RDPCLIENT ;


 int CLIPRDR_DATA_REQUEST ;
 int CLIPRDR_REQUEST ;
 int DEBUG_CLIPBOARD (char*) ;
 int buf_out_uint32 (int *,int ) ;
 int cliprdr_send_packet (int *,int ,int ,int *,int) ;

void
cliprdr_send_data_request(RDPCLIENT * This, uint32 format)
{
 uint8 buffer[4];

 DEBUG_CLIPBOARD(("cliprdr_send_data_request\n"));
 buf_out_uint32(buffer, format);
 cliprdr_send_packet(This, CLIPRDR_DATA_REQUEST, CLIPRDR_REQUEST, buffer, sizeof(buffer));
}
