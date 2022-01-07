
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef int HCURSOR ;


 int cache_put_cursor (int *,int ,int ) ;
 int in_uint16_le (int ,int ) ;
 int in_uint8p (int ,int *,int ) ;
 int ui_create_cursor (int *,int ,int ,int ,int ,int *,int *) ;
 int ui_set_cursor (int *,int ) ;

void
process_colour_pointer_pdu(RDPCLIENT * This, STREAM s)
{
 uint16 x, y, width, height, cache_idx, masklen, datalen;
 uint8 *mask, *data;
 HCURSOR cursor;

 in_uint16_le(s, cache_idx);
 in_uint16_le(s, x);
 in_uint16_le(s, y);
 in_uint16_le(s, width);
 in_uint16_le(s, height);
 in_uint16_le(s, masklen);
 in_uint16_le(s, datalen);
 in_uint8p(s, data, datalen);
 in_uint8p(s, mask, masklen);
 cursor = ui_create_cursor(This, x, y, width, height, mask, data);
 ui_set_cursor(This, cursor);
 cache_put_cursor(This, cache_idx, cursor);
}
