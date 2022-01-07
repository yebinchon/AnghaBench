
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_9__ {TYPE_4__* b_hdr; int * b_data; } ;
typedef TYPE_2__ arc_buf_t ;
struct TYPE_8__ {int * b_pabd; } ;
struct TYPE_10__ {TYPE_1__ b_l1hdr; } ;


 scalar_t__ ARC_BUF_COMPRESSED (TYPE_2__*) ;
 scalar_t__ ARC_BUF_LAST (TYPE_2__*) ;
 int ARC_BUF_SHARED (TYPE_2__*) ;
 int HDR_SHARED_DATA (TYPE_4__*) ;
 int IMPLY (int,int) ;
 scalar_t__ abd_is_linear (int *) ;
 int * abd_to_buf (int *) ;

__attribute__((used)) static inline boolean_t
arc_buf_is_shared(arc_buf_t *buf)
{
 boolean_t shared = (buf->b_data != ((void*)0) &&
     buf->b_hdr->b_l1hdr.b_pabd != ((void*)0) &&
     abd_is_linear(buf->b_hdr->b_l1hdr.b_pabd) &&
     buf->b_data == abd_to_buf(buf->b_hdr->b_l1hdr.b_pabd));
 IMPLY(shared, HDR_SHARED_DATA(buf->b_hdr));
 IMPLY(shared, ARC_BUF_SHARED(buf));
 IMPLY(shared, ARC_BUF_COMPRESSED(buf) || ARC_BUF_LAST(buf));






 return (shared);
}
