
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mbuf {size_t last; int * end; int * start; } ;


 int ASSERT (int) ;
 int mbuf_full (struct mbuf*) ;
 size_t mbuf_size (struct mbuf*) ;
 int nc_memcpy (size_t,int *,size_t) ;

void
mbuf_copy(struct mbuf *mbuf, uint8_t *pos, size_t n)
{
    if (n == 0) {
        return;
    }


    ASSERT(!mbuf_full(mbuf) && n <= mbuf_size(mbuf));


    ASSERT(pos < mbuf->start || pos >= mbuf->end);

    nc_memcpy(mbuf->last, pos, n);
    mbuf->last += n;
}
