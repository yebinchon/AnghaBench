
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int RDPCLIENT ;


 int CLIPRDR_DATA_RESPONSE ;
 int CLIPRDR_RESPONSE ;
 int DEBUG_CLIPBOARD (char*) ;
 int cliprdr_send_packet (int *,int ,int ,int *,int ) ;

void
cliprdr_send_data(RDPCLIENT * This, uint8 * data, uint32 length)
{
 DEBUG_CLIPBOARD(("cliprdr_send_data\n"));
 cliprdr_send_packet(This, CLIPRDR_DATA_RESPONSE, CLIPRDR_RESPONSE, data, length);
}
