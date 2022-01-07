
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum load_state_t { ____Placeholder_load_state_t } load_state_t ;


 int CallUIActivate_None ;
 int DocHostUIHandler ;
 void* FALSE ;
 int call_UIActivate ;
 void* complete ;
 int doc_hwnd ;
 int * doc_unk ;
 void* editmode ;
 int * expect_uihandler_iface ;
 void* inplace_deactivated ;
 void* ipsex ;
 int * last_hwnd ;
 void* load_from_stream ;
 int load_state ;
 int * nav_url ;
 scalar_t__ protocol_read ;
 void* set_clientsite ;
 scalar_t__ stream_read ;
 void* testing_submit ;

__attribute__((used)) static void init_test(enum load_state_t ls) {
    doc_unk = ((void*)0);
    doc_hwnd = last_hwnd = ((void*)0);
    set_clientsite = FALSE;
    load_from_stream = FALSE;
    call_UIActivate = CallUIActivate_None;
    load_state = ls;
    editmode = FALSE;
    stream_read = 0;
    protocol_read = 0;
    nav_url = ((void*)0);
    ipsex = FALSE;
    inplace_deactivated = FALSE;
    complete = FALSE;
    testing_submit = FALSE;
    expect_uihandler_iface = &DocHostUIHandler;
}
