
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int uSTMatrix; } ;
struct priv {TYPE_2__ uloc; } ;
struct TYPE_7__ {TYPE_1__* vt; struct priv* priv; } ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_5__ {int (* GetUniformLocation ) (int ,char*) ;} ;
typedef int GLuint ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int stub1 (int ,char*) ;

__attribute__((used)) static int
tc_anop_fetch_locations(opengl_tex_converter_t *tc, GLuint program)
{
    struct priv *priv = tc->priv;
    priv->uloc.uSTMatrix = tc->vt->GetUniformLocation(program, "uSTMatrix");
    return priv->uloc.uSTMatrix != -1 ? VLC_SUCCESS : VLC_EGENERIC;
}
