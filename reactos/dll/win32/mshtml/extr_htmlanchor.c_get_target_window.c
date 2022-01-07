
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int nsAString ;
typedef char WCHAR ;
struct TYPE_9__ {int IHTMLWindow2_iface; } ;
struct TYPE_10__ {TYPE_1__ base; struct TYPE_10__* parent; } ;
typedef int PRUnichar ;
typedef TYPE_2__ HTMLOuterWindow ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IHTMLWindow2_AddRef (int *) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int WARN (char*) ;
 int debugstr_w (int const*) ;
 int get_frame_by_name (TYPE_2__*,int const*,int ,TYPE_2__**) ;
 int get_top_window (TYPE_2__*,TYPE_2__**) ;
 int nsAString_GetData (int *,int const**) ;
 int strcmpiW (int const*,char const*) ;

HTMLOuterWindow *get_target_window(HTMLOuterWindow *window, nsAString *target_str, BOOL *use_new_window)
{
    HTMLOuterWindow *top_window, *ret_window;
    const PRUnichar *target;
    HRESULT hres;

    static const WCHAR _parentW[] = {'_','p','a','r','e','n','t',0};
    static const WCHAR _selfW[] = {'_','s','e','l','f',0};
    static const WCHAR _topW[] = {'_','t','o','p',0};

    *use_new_window = FALSE;

    nsAString_GetData(target_str, &target);
    TRACE("%s\n", debugstr_w(target));

    if(!*target || !strcmpiW(target, _selfW)) {
        IHTMLWindow2_AddRef(&window->base.IHTMLWindow2_iface);
        return window;
    }

    if(!strcmpiW(target, _topW)) {
        get_top_window(window, &top_window);
        IHTMLWindow2_AddRef(&top_window->base.IHTMLWindow2_iface);
        return top_window;
    }

    if(!strcmpiW(target, _parentW)) {
        if(!window->parent) {
            WARN("Window has no parent, treat as self\n");
            IHTMLWindow2_AddRef(&window->base.IHTMLWindow2_iface);
            return window;
        }

        IHTMLWindow2_AddRef(&window->parent->base.IHTMLWindow2_iface);
        return window->parent;
    }

    get_top_window(window, &top_window);

    hres = get_frame_by_name(top_window, target, TRUE, &ret_window);
    if(FAILED(hres) || !ret_window) {
        *use_new_window = TRUE;
        return ((void*)0);
    }

    IHTMLWindow2_AddRef(&ret_window->base.IHTMLWindow2_iface);
    return ret_window;
}
