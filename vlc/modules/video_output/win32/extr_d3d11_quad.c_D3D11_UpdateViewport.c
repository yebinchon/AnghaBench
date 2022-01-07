
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* cropViewport; TYPE_1__* textureFormat; } ;
typedef TYPE_3__ d3d_quad_t ;
struct TYPE_14__ {int const formatTexture; } ;
typedef TYPE_4__ d3d_format_t ;
struct TYPE_15__ {int left; int top; } ;
struct TYPE_12__ {int TopLeftX; int TopLeftY; int Width; int Height; } ;
struct TYPE_11__ {int formatTexture; int fourcc; } ;
typedef TYPE_5__ RECT ;
typedef int LONG ;
 int RECTHeight (TYPE_5__ const) ;
 int RECTWidth (TYPE_5__ const) ;



 int vlc_assert_unreachable () ;

void D3D11_UpdateViewport(d3d_quad_t *quad, const RECT *rect, const d3d_format_t *display)
{
    LONG srcAreaWidth, srcAreaHeight;

    srcAreaWidth = RECTWidth(*rect);
    srcAreaHeight = RECTHeight(*rect);

    quad->cropViewport[0].TopLeftX = rect->left;
    quad->cropViewport[0].TopLeftY = rect->top;
    quad->cropViewport[0].Width = srcAreaWidth;
    quad->cropViewport[0].Height = srcAreaHeight;

    switch ( quad->textureFormat->formatTexture )
    {
    case 137:
    case 136:
        quad->cropViewport[1].TopLeftX = rect->left / 2;
        quad->cropViewport[1].TopLeftY = rect->top / 2;
        quad->cropViewport[1].Width = srcAreaWidth / 2;
        quad->cropViewport[1].Height = srcAreaHeight / 2;
        break;
    case 133:
    case 139:
    case 138:
    case 140:
    case 135:
    case 134:
    case 131:
    case 141:
        if ( display->formatTexture == 137 ||
             display->formatTexture == 136 )
        {
            quad->cropViewport[1].TopLeftX = rect->left / 2;
            quad->cropViewport[1].TopLeftY = rect->top / 2;
            quad->cropViewport[1].Width = srcAreaWidth / 2;
            quad->cropViewport[1].Height = srcAreaHeight / 2;
        }
        break;
    case 132:
        switch ( quad->textureFormat->fourcc )
        {
        case 128:
            if ( display->formatTexture != 137 &&
                 display->formatTexture != 136 )
            {
                quad->cropViewport[1] = quad->cropViewport[2] =
                quad->cropViewport[3] = quad->cropViewport[0];
                break;
            }

        case 129:
        case 130:
            quad->cropViewport[1].TopLeftX = quad->cropViewport[0].TopLeftX / 2;
            quad->cropViewport[1].TopLeftY = quad->cropViewport[0].TopLeftY / 2;
            quad->cropViewport[1].Width = quad->cropViewport[0].Width / 2;
            quad->cropViewport[1].Height = quad->cropViewport[0].Height / 2;
            quad->cropViewport[2] = quad->cropViewport[1];
            break;
        }
        break;
    default:
        vlc_assert_unreachable();
    }
}
