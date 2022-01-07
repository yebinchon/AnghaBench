
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;
typedef int srtp_session_t ;
typedef int bsalt ;
typedef int bkey ;


 int EINVAL ;
 int hexstring (char const*,int *,int) ;
 scalar_t__ srtp_setkey (int *,int *,int,int *,int) ;

int
srtp_setkeystring (srtp_session_t *s, const char *key, const char *salt)
{
    uint8_t bkey[16];
    uint8_t bsalt[14];
    ssize_t bkeylen = hexstring (key, bkey, sizeof (bkey));
    ssize_t bsaltlen = hexstring (salt, bsalt, sizeof (bsalt));

    if ((bkeylen == -1) || (bsaltlen == -1))
        return EINVAL;
    return srtp_setkey (s, bkey, bkeylen, bsalt, bsaltlen) ? EINVAL : 0;
}
