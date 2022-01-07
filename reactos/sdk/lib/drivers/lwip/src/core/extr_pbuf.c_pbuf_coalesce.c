
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int tot_len; int * next; } ;
typedef int pbuf_layer ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_OK ;
 int LWIP_ASSERT (char*,int) ;
 int PBUF_RAM ;
 struct pbuf* pbuf_alloc (int ,int ,int ) ;
 scalar_t__ pbuf_copy (struct pbuf*,struct pbuf*) ;
 int pbuf_free (struct pbuf*) ;

struct pbuf*
pbuf_coalesce(struct pbuf *p, pbuf_layer layer)
{
  struct pbuf *q;
  err_t err;
  if (p->next == ((void*)0)) {
    return p;
  }
  q = pbuf_alloc(layer, p->tot_len, PBUF_RAM);
  if (q == ((void*)0)) {

    return p;
  }
  err = pbuf_copy(q, p);
  LWIP_ASSERT("pbuf_copy failed", err == ERR_OK);
  pbuf_free(p);
  return q;
}
