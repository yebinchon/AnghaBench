
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* outer_window; } ;
struct TYPE_12__ {TYPE_2__ base; } ;
struct TYPE_11__ {int nsscript; } ;
struct TYPE_9__ {scalar_t__ scriptmode; } ;
typedef int ScriptHost ;
typedef TYPE_3__ HTMLScriptElement ;
typedef TYPE_4__ HTMLInnerWindow ;
typedef int GUID ;


 int CLSID_JScript ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 scalar_t__ SCRIPTMODE_ACTIVESCRIPT ;
 int TRACE (char*) ;
 int WARN (char*) ;
 int get_script_guid (TYPE_4__*,int ,int *) ;
 int * get_script_host (TYPE_4__*,int *) ;

__attribute__((used)) static ScriptHost *get_elem_script_host(HTMLInnerWindow *window, HTMLScriptElement *script_elem)
{
    GUID guid;

    if(!get_script_guid(window, script_elem->nsscript, &guid)) {
        WARN("Could not find script GUID\n");
        return ((void*)0);
    }

    if(IsEqualGUID(&CLSID_JScript, &guid)
       && (!window->base.outer_window || window->base.outer_window->scriptmode != SCRIPTMODE_ACTIVESCRIPT)) {
        TRACE("Ignoring JScript\n");
        return ((void*)0);
    }

    return get_script_host(window, &guid);
}
