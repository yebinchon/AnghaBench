
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int mac; } ;
struct TYPE_6__ {unsigned int tag_len; TYPE_1__ rtcp; } ;
typedef TYPE_2__ srtp_session_t ;


 int EACCES ;
 int EINVAL ;
 scalar_t__ memcmp (int *,int const*,size_t) ;
 int * rtcp_digest (int ,int *,size_t) ;
 int srtp_crypt (TYPE_2__*,int *,size_t) ;

int
srtcp_recv (srtp_session_t *s, uint8_t *buf, size_t *lenp)
{
    size_t len = *lenp;

    if (len < (4u + s->tag_len))
        return EINVAL;
    len -= s->tag_len;

    const uint8_t *tag = rtcp_digest (s->rtcp.mac, buf, len);
    if (memcmp (buf + len, tag, s->tag_len))
         return EACCES;

    len -= 4;
    *lenp = len;
    return srtp_crypt (s, buf, len);
}
