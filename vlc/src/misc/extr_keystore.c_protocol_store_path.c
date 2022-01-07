
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int psz_protocol; scalar_t__ psz_path; } ;
typedef TYPE_1__ vlc_url_t ;


 scalar_t__ protocol_is_smb (TYPE_1__ const*) ;
 scalar_t__ strcasecmp (int ,char*) ;
 scalar_t__ strncasecmp (int ,char*,int) ;

__attribute__((used)) static bool
protocol_store_path(const vlc_url_t *p_url)
{
    return p_url->psz_path
      && (strncasecmp(p_url->psz_protocol, "http", 4) == 0
      || strcasecmp(p_url->psz_protocol, "rtsp") == 0
      || protocol_is_smb(p_url));
}
