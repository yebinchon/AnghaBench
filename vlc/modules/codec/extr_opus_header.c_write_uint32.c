
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int val ;
typedef int uint32_t ;
struct TYPE_3__ {int pos; int maxlen; int* data; } ;
typedef TYPE_1__ Packet ;



__attribute__((used)) static int write_uint32(Packet *p, uint32_t val)
{
    if (p->pos>p->maxlen-4)
        return 0;
    p->data[p->pos ] = (val ) & 0xFF;
    p->data[p->pos+1] = (val>> 8) & 0xFF;
    p->data[p->pos+2] = (val>>16) & 0xFF;
    p->data[p->pos+3] = (val>>24) & 0xFF;
    p->pos += 4;
    return 1;
}
