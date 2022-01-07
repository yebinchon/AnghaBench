
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hwnd; int rect; scalar_t__ ip_object; } ;
typedef int RECT ;
typedef TYPE_1__ PluginHost ;
typedef scalar_t__ HWND ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int FIXME (char*) ;
 int IOleInPlaceObject_SetObjectRects (scalar_t__,int *,int *) ;
 int TRACE (char*,scalar_t__,int ) ;
 scalar_t__ TRUE ;
 int embed_plugin_object (TYPE_1__*) ;
 scalar_t__ memcmp (int const*,int *,int) ;
 int wine_dbgstr_rect (int const*) ;

void update_plugin_window(PluginHost *host, HWND hwnd, const RECT *rect)
{
    BOOL rect_changed = FALSE;

    if(!hwnd || (host->hwnd && host->hwnd != hwnd)) {
        FIXME("unhandled hwnd\n");
        return;
    }

    TRACE("%p %s\n", hwnd, wine_dbgstr_rect(rect));

    if(memcmp(rect, &host->rect, sizeof(RECT))) {
        host->rect = *rect;
        rect_changed = TRUE;
    }

    if(!host->hwnd) {
        host->hwnd = hwnd;
        embed_plugin_object(host);
    }

    if(rect_changed && host->ip_object)
        IOleInPlaceObject_SetObjectRects(host->ip_object, &host->rect, &host->rect);
}
