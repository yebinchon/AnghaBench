
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* psz_description; void* psz_language; int i_id; int i_group; } ;
typedef TYPE_1__ es_format_t ;


 int free (void*) ;
 void* strdup (void*) ;

__attribute__((used)) static inline void es_format_SetMeta( es_format_t *p_dst, const es_format_t *p_src )
{
    p_dst->i_group = p_src->i_group;
    p_dst->i_id = p_src->i_id;
    if( p_src->psz_language )
    {
        free( p_dst->psz_language );
        p_dst->psz_language = strdup( p_src->psz_language );
    }
    if( p_src->psz_description )
    {
        free( p_dst->psz_description );
        p_dst->psz_description = strdup( p_src->psz_description );
    }
}
