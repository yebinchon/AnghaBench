
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_http_stream {TYPE_1__* cbs; } ;
struct vlc_http_msg {int dummy; } ;
struct TYPE_2__ {struct vlc_http_msg* (* read_headers ) (struct vlc_http_stream*) ;} ;


 struct vlc_http_msg* stub1 (struct vlc_http_stream*) ;

__attribute__((used)) static inline
struct vlc_http_msg *vlc_http_stream_read_headers(struct vlc_http_stream *s)
{
    return s->cbs->read_headers(s);
}
