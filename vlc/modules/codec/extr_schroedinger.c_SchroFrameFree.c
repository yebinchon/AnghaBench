
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picture_free_t {int p_pic; } ;
typedef int SchroFrame ;


 int free (struct picture_free_t*) ;
 int picture_Release (int ) ;

__attribute__((used)) static void SchroFrameFree( SchroFrame *frame, void *priv)
{
    struct picture_free_t *p_free = priv;

    if( !p_free )
        return;

    picture_Release( p_free->p_pic );
    free(p_free);
    (void)frame;
}
