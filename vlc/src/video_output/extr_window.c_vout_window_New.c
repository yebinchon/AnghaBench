
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int has_double_click; } ;
struct TYPE_12__ {int owner; int * sys; TYPE_1__ info; int handle; } ;
struct TYPE_11__ {int inhibit_windowed; int active; int fullscreen; int lock; int * inhibit; int module; TYPE_3__ wnd; } ;
typedef TYPE_2__ window_t ;
typedef TYPE_3__ vout_window_t ;
typedef int vout_window_owner_t ;
typedef int vlc_object_t ;
typedef int vlc_inhibit_t ;


 int VLC_OBJECT (TYPE_3__*) ;
 int assert (int ) ;
 int memset (int *,int ,int) ;
 int var_InheritInteger (int *,char*) ;
 TYPE_2__* vlc_custom_create (int *,int,char*) ;
 int * vlc_inhibit_Create (int ) ;
 int vlc_module_load (TYPE_3__*,char*,char const*,int,int ,TYPE_3__*) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_object_delete (TYPE_3__*) ;
 int vout_window_start ;

vout_window_t *vout_window_New(vlc_object_t *obj, const char *module,
                               const vout_window_owner_t *owner)
{
    window_t *w = vlc_custom_create(obj, sizeof(*w), "window");
    vout_window_t *window = &w->wnd;

    memset(&window->handle, 0, sizeof(window->handle));
    window->info.has_double_click = 0;
    window->sys = ((void*)0);
    assert(owner != ((void*)0));
    window->owner = *owner;

    int dss = var_InheritInteger(obj, "disable-screensaver");

    w->inhibit = ((void*)0);
    w->inhibit_windowed = dss == 1;
    w->active = 0;
    w->fullscreen = 0;
    vlc_mutex_init(&w->lock);

    w->module = vlc_module_load(window, "vout window", module, 0,
                                vout_window_start, window);
    if (!w->module) {
        vlc_mutex_destroy(&w->lock);
        vlc_object_delete(window);
        return ((void*)0);
    }


    if (dss > 0) {
        vlc_inhibit_t *inh = vlc_inhibit_Create(VLC_OBJECT(window));

        vlc_mutex_lock(&w->lock);
        w->inhibit = inh;
        vlc_mutex_unlock(&w->lock);
    }
    return window;
}
