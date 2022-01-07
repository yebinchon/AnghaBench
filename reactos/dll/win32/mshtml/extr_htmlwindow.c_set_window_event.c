
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int eventid_t ;
typedef int VARIANT ;
struct TYPE_5__ {TYPE_1__* inner_window; } ;
struct TYPE_4__ {int event_target; int doc; } ;
typedef TYPE_2__ HTMLWindow ;
typedef int HRESULT ;


 int E_FAIL ;
 int FIXME (char*) ;
 int set_event_handler (int *,int ,int *) ;

__attribute__((used)) static inline HRESULT set_window_event(HTMLWindow *window, eventid_t eid, VARIANT *var)
{
    if(!window->inner_window->doc) {
        FIXME("No document\n");
        return E_FAIL;
    }

    return set_event_handler(&window->inner_window->event_target, eid, var);
}
