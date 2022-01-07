
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_http_stream {TYPE_1__* cbs; } ;
struct TYPE_2__ {int (* close ) (struct vlc_http_stream*,int) ;} ;


 int stub1 (struct vlc_http_stream*,int) ;

__attribute__((used)) static inline void vlc_http_stream_close(struct vlc_http_stream *s, bool abort)
{
    s->cbs->close(s, abort);
}
