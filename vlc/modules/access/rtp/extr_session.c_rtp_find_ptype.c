
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct rtp_pt_t {scalar_t__ number; } ;
struct TYPE_5__ {void** opaque; } ;
typedef TYPE_1__ rtp_source_t ;
struct TYPE_6__ {unsigned int ptc; struct rtp_pt_t const* ptv; } ;
typedef TYPE_2__ rtp_session_t ;
typedef int block_t ;


 scalar_t__ rtp_ptype (int const*) ;

__attribute__((used)) static const struct rtp_pt_t *
rtp_find_ptype (const rtp_session_t *session, rtp_source_t *source,
                const block_t *block, void **pt_data)
{
    uint8_t ptype = rtp_ptype (block);

    for (unsigned i = 0; i < session->ptc; i++)
    {
        if (session->ptv[i].number == ptype)
        {
            if (pt_data != ((void*)0))
                *pt_data = source->opaque[i];
            return &session->ptv[i];
        }
    }
    return ((void*)0);
}
