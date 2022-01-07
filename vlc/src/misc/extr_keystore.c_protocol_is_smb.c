
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_protocol; } ;
typedef TYPE_1__ vlc_url_t ;


 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static bool
protocol_is_smb(const vlc_url_t *p_url)
{
    return strcasecmp(p_url->psz_protocol, "smb") == 0;
}
