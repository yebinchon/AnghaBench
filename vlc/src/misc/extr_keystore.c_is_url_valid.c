
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* psz_host; scalar_t__* psz_protocol; } ;
typedef TYPE_1__ vlc_url_t ;



__attribute__((used)) static bool
is_url_valid(const vlc_url_t *p_url)
{
    return p_url && p_url->psz_protocol && p_url->psz_protocol[0]
        && p_url->psz_host && p_url->psz_host[0];
}
