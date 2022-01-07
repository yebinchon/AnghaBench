
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint_fast32_t ;
struct vlc_h2_parser {int opaque; TYPE_1__* cbs; } ;
struct TYPE_2__ {int (* stream_error ) (int ,int ,int ) ;} ;


 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int vlc_h2_stream_error(struct vlc_h2_parser *p, uint_fast32_t id,
                               uint_fast32_t code)
{
    return p->cbs->stream_error(p->opaque, id, code);
}
