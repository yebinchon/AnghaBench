
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
struct TYPE_4__ {int b_hdr; } ;
typedef TYPE_1__ arc_buf_t ;


 scalar_t__ ARC_BUF_COMPRESSED (TYPE_1__*) ;
 int HDR_GET_COMPRESS (int ) ;
 int ZIO_COMPRESS_OFF ;

enum zio_compress
arc_get_compression(arc_buf_t *buf)
{
 return (ARC_BUF_COMPRESSED(buf) ?
     HDR_GET_COMPRESS(buf->b_hdr) : ZIO_COMPRESS_OFF);
}
