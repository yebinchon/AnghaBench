
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
typedef int arc_buf_hdr_t ;


 scalar_t__ HDR_COMPRESSION_ENABLED (int *) ;
 int HDR_GET_COMPRESS (int *) ;
 int ZIO_COMPRESS_OFF ;

__attribute__((used)) static inline enum zio_compress
arc_hdr_get_compress(arc_buf_hdr_t *hdr)
{
 return (HDR_COMPRESSION_ENABLED(hdr) ?
     HDR_GET_COMPRESS(hdr) : ZIO_COMPRESS_OFF);
}
