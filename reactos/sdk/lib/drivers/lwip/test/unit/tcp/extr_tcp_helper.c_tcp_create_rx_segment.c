
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u32_t ;
struct tcp_pcb {scalar_t__ lastack; scalar_t__ rcv_nxt; int local_port; int remote_port; int local_ip; int remote_ip; } ;
struct pbuf {int dummy; } ;


 struct pbuf* tcp_create_segment (int *,int *,int ,int ,void*,size_t,scalar_t__,scalar_t__,int ) ;

struct pbuf*
tcp_create_rx_segment(struct tcp_pcb* pcb, void* data, size_t data_len, u32_t seqno_offset,
                      u32_t ackno_offset, u8_t headerflags)
{
  return tcp_create_segment(&pcb->remote_ip, &pcb->local_ip, pcb->remote_port, pcb->local_port,
    data, data_len, pcb->rcv_nxt + seqno_offset, pcb->lastack + ackno_offset, headerflags);
}
