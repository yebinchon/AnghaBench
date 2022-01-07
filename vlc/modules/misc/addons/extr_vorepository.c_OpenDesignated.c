
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int pf_retrieve; int pf_find; scalar_t__ psz_uri; } ;
typedef TYPE_1__ addons_finder_t ;


 int FindDesignated ;
 int Retrieve ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ strlen (scalar_t__) ;
 scalar_t__ strncmp (char*,scalar_t__,int) ;

__attribute__((used)) static int OpenDesignated(vlc_object_t *p_this)
{
    addons_finder_t *p_finder = (addons_finder_t*) p_this;
    if ( !p_finder->psz_uri
         || strncmp( "file://", p_finder->psz_uri, 7 )
         || strncmp( ".vlp", p_finder->psz_uri + strlen( p_finder->psz_uri ) - 4, 4 )
       )
        return VLC_EGENERIC;

    p_finder->pf_find = FindDesignated;
    p_finder->pf_retrieve = Retrieve;

    return VLC_SUCCESS;
}
