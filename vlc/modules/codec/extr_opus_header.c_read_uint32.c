
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pos; int maxlen; scalar_t__* data; } ;
typedef TYPE_1__ ROPacket ;



__attribute__((used)) static int read_uint32(ROPacket *p, uint32_t *val)
{
    if (p->pos>p->maxlen-4)
        return 0;
    *val = (uint32_t)p->data[p->pos ];
    *val |= (uint32_t)p->data[p->pos+1]<< 8;
    *val |= (uint32_t)p->data[p->pos+2]<<16;
    *val |= (uint32_t)p->data[p->pos+3]<<24;
    p->pos += 4;
    return 1;
}
