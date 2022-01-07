
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_pathbuffer; int psz_buffer; int psz_host; } ;
typedef TYPE_1__ vlc_url_t ;


 int free (int ) ;

void vlc_UrlClean (vlc_url_t *restrict url)
{
    free (url->psz_host);
    free (url->psz_buffer);
    free (url->psz_pathbuffer);
}
