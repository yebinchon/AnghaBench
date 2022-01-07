
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t vlc_meta_type_t ;
struct TYPE_3__ {int ** ppsz_meta; } ;
typedef TYPE_1__ vlc_meta_t ;


 scalar_t__ IsUTF8 (char const*) ;
 int assert (int) ;
 int free (int *) ;
 int * strdup (char const*) ;

void vlc_meta_Set( vlc_meta_t *p_meta, vlc_meta_type_t meta_type, const char *psz_val )
{
    free( p_meta->ppsz_meta[meta_type] );
    assert( psz_val == ((void*)0) || IsUTF8( psz_val ) );
    p_meta->ppsz_meta[meta_type] = psz_val ? strdup( psz_val ) : ((void*)0);
}
