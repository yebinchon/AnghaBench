
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ srtp_session_t ;



__attribute__((used)) static inline unsigned rcc_mode (const srtp_session_t *s)
{
    return (s->flags >> 4) & 3;
}
