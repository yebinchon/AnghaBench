
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct pbuf {int dummy; } ;
typedef int ip_addr_t ;


 int TCP_WND ;
 struct pbuf* tcp_create_segment_wnd (int *,int *,int ,int ,void*,size_t,int ,int ,int ,int ) ;

struct pbuf*
tcp_create_segment(ip_addr_t* src_ip, ip_addr_t* dst_ip,
                   u16_t src_port, u16_t dst_port, void* data, size_t data_len,
                   u32_t seqno, u32_t ackno, u8_t headerflags)
{
  return tcp_create_segment_wnd(src_ip, dst_ip, src_port, dst_port, data,
    data_len, seqno, ackno, headerflags, TCP_WND);
}
