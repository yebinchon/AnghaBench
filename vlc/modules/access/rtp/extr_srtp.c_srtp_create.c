
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int flags; unsigned int tag_len; int rtp_rcc; int rtp; int rtcp; } ;
typedef TYPE_1__ srtp_session_t ;


 int GCRY_CIPHER_AES ;
 int GCRY_CIPHER_NONE ;
 int GCRY_MD_NONE ;
 int GCRY_MD_SHA1 ;




 unsigned int SRTP_FLAGS_MASK ;
 int SRTP_PRF_AES_CM ;
 int free (TYPE_1__*) ;
 unsigned int gcry_md_get_algo_dlen (int) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ proto_create (int *,int,int) ;
 int proto_destroy (int *) ;
 scalar_t__ rcc_mode (TYPE_1__*) ;

srtp_session_t *
srtp_create (int encr, int auth, unsigned tag_len, int prf, unsigned flags)
{
    if ((flags & ~SRTP_FLAGS_MASK))
        return ((void*)0);

    int cipher, md;
    switch (encr)
    {
        case 128:
            cipher = GCRY_CIPHER_NONE;
            break;

        case 129:
            cipher = GCRY_CIPHER_AES;
            break;

        default:
            return ((void*)0);
    }

    switch (auth)
    {
        case 130:
            md = GCRY_MD_NONE;
            break;

        case 131:
            md = GCRY_MD_SHA1;
            break;

        default:
            return ((void*)0);
    }

    if (tag_len > gcry_md_get_algo_dlen (md))
        return ((void*)0);

    if (prf != SRTP_PRF_AES_CM)
        return ((void*)0);

    srtp_session_t *s = malloc (sizeof (*s));
    if (s == ((void*)0))
        return ((void*)0);

    memset (s, 0, sizeof (*s));
    s->flags = flags;
    s->tag_len = tag_len;
    s->rtp_rcc = 1;
    if (rcc_mode (s))
    {
        if (tag_len < 4)
            goto error;
    }

    if (proto_create (&s->rtp, cipher, md) == 0)
    {
        if (proto_create (&s->rtcp, cipher, md) == 0)
            return s;
        proto_destroy (&s->rtp);
    }

error:
    free (s);
    return ((void*)0);
}
