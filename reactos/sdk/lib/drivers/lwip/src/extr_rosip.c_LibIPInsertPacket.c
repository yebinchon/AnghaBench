
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32_t ;
struct pbuf {scalar_t__ tot_len; scalar_t__ len; int payload; } ;
struct TYPE_3__ {int (* input ) (struct pbuf*,TYPE_1__*) ;} ;
typedef TYPE_1__* PNETIF ;


 int ASSERT (void const* const) ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 int RtlCopyMemory (int ,void const* const,scalar_t__ const) ;
 struct pbuf* pbuf_alloc (int ,scalar_t__ const,int ) ;
 int stub1 (struct pbuf*,TYPE_1__*) ;

void
LibIPInsertPacket(void *ifarg,
                  const void *const data,
                  const u32_t size)
{
    struct pbuf *p;

    ASSERT(ifarg);
    ASSERT(data);
    ASSERT(size > 0);

    p = pbuf_alloc(PBUF_RAW, size, PBUF_RAM);
    if (p)
    {
        ASSERT(p->tot_len == p->len);
        ASSERT(p->len == size);

        RtlCopyMemory(p->payload, data, p->len);

        ((PNETIF)ifarg)->input(p, (PNETIF)ifarg);
    }
}
