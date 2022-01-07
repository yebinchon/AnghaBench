
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int video_format_t ;
struct TYPE_10__ {int refs; int format; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_9__ {int * opaque; } ;
struct TYPE_11__ {TYPE_1__ gc; TYPE_2__ picture; } ;
typedef TYPE_3__ picture_priv_t ;


 int atomic_init (int *,int) ;
 int free (TYPE_2__*) ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ picture_Setup (TYPE_2__*,int const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static picture_priv_t *picture_NewPrivate(const video_format_t *restrict p_fmt,
                                          size_t extra)
{

    picture_priv_t *priv = malloc(sizeof (*priv) + extra);
    if( unlikely(priv == ((void*)0)) )
        return ((void*)0);

    picture_t *p_picture = &priv->picture;

    memset( p_picture, 0, sizeof( *p_picture ) );

    p_picture->format = *p_fmt;

    if( picture_Setup( p_picture, p_fmt ) )
    {
        free( p_picture );
        return ((void*)0);
    }

    atomic_init(&p_picture->refs, 1);
    priv->gc.opaque = ((void*)0);

    return priv;
}
