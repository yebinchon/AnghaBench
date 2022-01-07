
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instance {scalar_t__ mbuf_chunk_size; } ;


 int LOG_DEBUG ;
 scalar_t__ MBUF_HSIZE ;
 int STAILQ_INIT (int *) ;
 int free_mbufq ;
 int log_debug (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ mbuf_chunk_size ;
 scalar_t__ mbuf_offset ;
 scalar_t__ nfree_mbufq ;

void
mbuf_init(struct instance *nci)
{
    nfree_mbufq = 0;
    STAILQ_INIT(&free_mbufq);

    mbuf_chunk_size = nci->mbuf_chunk_size;
    mbuf_offset = mbuf_chunk_size - MBUF_HSIZE;

    log_debug(LOG_DEBUG, "mbuf hsize %d chunk size %zu offset %zu length %zu",
              MBUF_HSIZE, mbuf_chunk_size, mbuf_offset, mbuf_offset);
}
