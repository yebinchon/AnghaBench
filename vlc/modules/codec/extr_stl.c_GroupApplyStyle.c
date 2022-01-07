
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_3__* p_style; } ;
typedef TYPE_1__ stl_sg_t ;
struct TYPE_5__ {int i_style_flags; } ;


 TYPE_3__* CreateGroupStyle () ;






 int STYLE_ITALIC ;
 int STYLE_UNDERLINE ;

__attribute__((used)) static void GroupApplyStyle(stl_sg_t *p_group, uint8_t code)
{
    if(p_group->p_style == ((void*)0) &&
      !(p_group->p_style = CreateGroupStyle()))
        return;

    switch(code)
    {
        case 130:
            p_group->p_style->i_style_flags |= STYLE_ITALIC;
            break;
        case 131:
            p_group->p_style->i_style_flags &= ~STYLE_ITALIC;
            break;
        case 128:
            p_group->p_style->i_style_flags |= STYLE_UNDERLINE;
            break;
        case 129:
            p_group->p_style->i_style_flags &= ~STYLE_UNDERLINE;
            break;
        case 132:
        case 133:
        default:
            break;
    }
}
