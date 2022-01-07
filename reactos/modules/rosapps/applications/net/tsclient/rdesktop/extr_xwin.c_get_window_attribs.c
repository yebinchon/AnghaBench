
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int colormap; int override_redirect; int backing_store; void* border_pixel; void* background_pixel; } ;
typedef TYPE_2__ XSetWindowAttributes ;
struct TYPE_6__ {int xcolmap; int screen; } ;
struct TYPE_8__ {TYPE_1__ xwin; int fullscreen; scalar_t__ ownbackstore; } ;
typedef TYPE_3__ RDPCLIENT ;


 int Always ;
 void* BlackPixelOfScreen (int ) ;
 int NotUseful ;
 void* WhitePixelOfScreen (int ) ;

__attribute__((used)) static void
get_window_attribs(RDPCLIENT * This, XSetWindowAttributes * attribs)
{
 attribs->background_pixel = BlackPixelOfScreen(This->xwin.screen);
 attribs->background_pixel = WhitePixelOfScreen(This->xwin.screen);
 attribs->border_pixel = WhitePixelOfScreen(This->xwin.screen);
 attribs->backing_store = This->ownbackstore ? NotUseful : Always;
 attribs->override_redirect = This->fullscreen;
 attribs->colormap = This->xwin.xcolmap;
}
