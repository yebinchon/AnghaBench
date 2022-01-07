
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint_fast32_t ;
struct vlc_h2_parser {int opaque; TYPE_1__* cbs; } ;
struct TYPE_2__ {void* (* stream_lookup ) (int ,int ) ;} ;


 void* stub1 (int ,int ) ;

__attribute__((used)) static void *vlc_h2_stream_lookup(struct vlc_h2_parser *p, uint_fast32_t id)
{
    return p->cbs->stream_lookup(p->opaque, id);
}
