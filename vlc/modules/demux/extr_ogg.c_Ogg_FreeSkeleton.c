
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_messages; struct TYPE_5__* p_index; struct TYPE_5__** ppsz_messages; } ;
typedef TYPE_1__ ogg_skeleton_t ;


 int TAB_CLEAN (int,TYPE_1__**) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void Ogg_FreeSkeleton( ogg_skeleton_t *p_skel )
{
    if ( !p_skel ) return;
    for ( int i=0; i< p_skel->i_messages; i++ )
        free( p_skel->ppsz_messages[i] );
    TAB_CLEAN( p_skel->i_messages, p_skel->ppsz_messages );
    free( p_skel->p_index );
    free( p_skel );
}
