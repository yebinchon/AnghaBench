
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_serialize_back_or_screen_on () ;
 int test_serialize_collapse_notification_panel () ;
 int test_serialize_expand_notification_panel () ;
 int test_serialize_get_clipboard () ;
 int test_serialize_inject_keycode () ;
 int test_serialize_inject_mouse_event () ;
 int test_serialize_inject_scroll_event () ;
 int test_serialize_inject_text () ;
 int test_serialize_inject_text_long () ;
 int test_serialize_set_clipboard () ;
 int test_serialize_set_screen_power_mode () ;

int main(void) {
    test_serialize_inject_keycode();
    test_serialize_inject_text();
    test_serialize_inject_text_long();
    test_serialize_inject_mouse_event();
    test_serialize_inject_scroll_event();
    test_serialize_back_or_screen_on();
    test_serialize_expand_notification_panel();
    test_serialize_collapse_notification_panel();
    test_serialize_get_clipboard();
    test_serialize_set_clipboard();
    test_serialize_set_screen_power_mode();
    return 0;
}
