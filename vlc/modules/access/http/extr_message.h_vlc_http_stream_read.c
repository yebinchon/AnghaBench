
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_http_stream {TYPE_1__* cbs; } ;
struct block_t {int dummy; } ;
struct TYPE_2__ {struct block_t* (* read ) (struct vlc_http_stream*) ;} ;


 struct block_t* stub1 (struct vlc_http_stream*) ;

__attribute__((used)) static inline struct block_t *vlc_http_stream_read(struct vlc_http_stream *s)
{
    return s->cbs->read(s);
}
