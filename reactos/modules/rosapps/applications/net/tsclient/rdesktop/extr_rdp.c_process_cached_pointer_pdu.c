
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;
typedef int RDPCLIENT ;


 int cache_get_cursor (int *,int ) ;
 int in_uint16_le (int ,int ) ;
 int ui_set_cursor (int *,int ) ;

void
process_cached_pointer_pdu(RDPCLIENT * This, STREAM s)
{
 uint16 cache_idx;

 in_uint16_le(s, cache_idx);
 ui_set_cursor(This, cache_get_cursor(This, cache_idx));
}
