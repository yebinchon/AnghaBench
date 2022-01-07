
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtp_pkt {int dummy; } ;
struct rist_flow {int reset; int fd_in; int fd_nack; int fd_rtcp_m; int * buffer; } ;


 int RIST_QUEUE_SIZE ;
 void* calloc (int,int) ;
 int free (struct rist_flow*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct rist_flow *rist_init_rx(void)
{
    struct rist_flow *flow = calloc(1, sizeof(struct rist_flow));
    if (!flow)
        return ((void*)0);

    flow->reset = 1;
    flow->buffer = calloc(RIST_QUEUE_SIZE, sizeof(struct rtp_pkt));

    if ( unlikely( flow->buffer == ((void*)0) ) )
    {
        free(flow);
        return ((void*)0);
    }
    flow->fd_in = -1;
    flow->fd_nack = -1;
    flow->fd_rtcp_m = -1;

    return flow;
}
