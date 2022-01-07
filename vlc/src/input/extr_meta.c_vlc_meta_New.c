
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extra_tags; scalar_t__ i_status; int ppsz_meta; } ;
typedef TYPE_1__ vlc_meta_t ;


 scalar_t__ malloc (int) ;
 int memset (int ,int ,int) ;
 int vlc_dictionary_init (int *,int ) ;

vlc_meta_t *vlc_meta_New( void )
{
    vlc_meta_t *m = (vlc_meta_t*)malloc( sizeof(*m) );
    if( !m )
        return ((void*)0);
    memset( m->ppsz_meta, 0, sizeof(m->ppsz_meta) );
    m->i_status = 0;
    vlc_dictionary_init( &m->extra_tags, 0 );
    return m;
}
