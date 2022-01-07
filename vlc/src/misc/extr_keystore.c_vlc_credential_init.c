
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_url_t ;
struct TYPE_5__ {int const* p_url; int i_get_order; } ;
typedef TYPE_1__ vlc_credential ;


 int GET_FROM_URL ;
 int assert (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void
vlc_credential_init(vlc_credential *p_credential, const vlc_url_t *p_url)
{
    assert(p_credential);

    memset(p_credential, 0, sizeof(*p_credential));
    p_credential->i_get_order = GET_FROM_URL;
    p_credential->p_url = p_url;
}
