
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ session_id; scalar_t__ orig_ip_version; int orig_host; int username; } ;
typedef TYPE_1__ sdp_t ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool IsSameSession( sdp_t *p_sdp1, sdp_t *p_sdp2 )
{







    if (strcmp (p_sdp1->username, p_sdp2->username)
     || (p_sdp1->session_id != p_sdp2->session_id)
     || (p_sdp1->orig_ip_version != p_sdp2->orig_ip_version)
     || strcmp (p_sdp1->orig_host, p_sdp2->orig_host))
        return 0;

    return 1;
}
