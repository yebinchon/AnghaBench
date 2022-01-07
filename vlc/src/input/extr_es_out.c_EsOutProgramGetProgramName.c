
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_id; scalar_t__ p_meta; } ;
typedef TYPE_1__ es_out_pgrm_t ;


 int _ (char*) ;
 int asprintf (char**,char*,int ,int ) ;
 char* strdup (scalar_t__) ;
 scalar_t__ vlc_meta_Get (scalar_t__,int ) ;
 int vlc_meta_Title ;

__attribute__((used)) static char *EsOutProgramGetProgramName( es_out_pgrm_t *p_pgrm )
{
    char *psz = ((void*)0);
    if( p_pgrm->p_meta && vlc_meta_Get( p_pgrm->p_meta, vlc_meta_Title ) )
    {
        return strdup( vlc_meta_Get( p_pgrm->p_meta, vlc_meta_Title ) );
    }
    else
    {
        if( asprintf( &psz, "%s %d", _("Program"), p_pgrm->i_id ) == -1 )
            return ((void*)0);
    }
    return psz;
}
