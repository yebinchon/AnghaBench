
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int b_hdr; } ;
typedef TYPE_1__ arc_buf_t ;


 scalar_t__ ARC_BUF_COMPRESSED (TYPE_1__*) ;
 int HDR_GET_LSIZE (int ) ;
 int HDR_GET_PSIZE (int ) ;

uint64_t
arc_buf_size(arc_buf_t *buf)
{
 return (ARC_BUF_COMPRESSED(buf) ?
     HDR_GET_PSIZE(buf->b_hdr) : HDR_GET_LSIZE(buf->b_hdr));
}
