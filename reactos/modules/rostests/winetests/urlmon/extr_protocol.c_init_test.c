
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS ;
 void* FALSE ;
 int ResetEvent (int ) ;
 int STATE_CONNECTING ;
 int TEST_ABORT ;
 int TEST_ASYNCREQ ;
 int TEST_BINDING ;
 int TEST_DIRECT_READ ;
 int TEST_DISABLEAUTOREDIRECT ;
 int TEST_EMPTY ;
 int TEST_EMULATEPROT ;
 int TEST_FILTER ;
 int TEST_FIRST_HTTP ;
 int TEST_FROMCACHE ;
 int TEST_IMPLPROTEX ;
 int TEST_NOMIME ;
 int TEST_REDIRECT ;
 int TEST_SHORT_READ ;
 void* TRUE ;
 int TYMED_NULL ;
 int async_protocol ;
 void* async_read_pending ;
 int bind_from_cache ;
 int bindinfo_options ;
 int binding_protocol ;
 int binding_test ;
 int direct_read ;
 int empty_file ;
 int emulate_prot ;
 int event_complete ;
 int event_complete2 ;
 int event_continue ;
 int event_continue_done ;
 void* file_with_hash ;
 scalar_t__ filter_state ;
 int * filtered_protocol ;
 int * filtered_sink ;
 void* first_data_notif ;
 int http_is_first ;
 int http_post_test ;
 int impl_protex ;
 int mimefilter_test ;
 int no_mime ;
 scalar_t__ post_stream_read ;
 scalar_t__ prot_read ;
 scalar_t__ prot_state ;
 int redirect_on_continue ;
 int register_filter (int) ;
 void* reuse_protocol_thread ;
 void* security_problem ;
 int short_read ;
 int state ;
 int test_abort ;
 int test_async_req ;
 int test_redirect ;
 int tested_protocol ;
 void* wait_for_switch ;

__attribute__((used)) static void init_test(int prot, DWORD flags)
{
    tested_protocol = prot;
    binding_test = (flags & TEST_BINDING) != 0;
    first_data_notif = TRUE;
    prot_read = 0;
    prot_state = 0;
    async_read_pending = TRUE;
    mimefilter_test = (flags & TEST_FILTER) != 0;
    no_mime = (flags & TEST_NOMIME) != 0;
    filter_state = 0;
    post_stream_read = 0;
    ResetEvent(event_complete);
    ResetEvent(event_complete2);
    ResetEvent(event_continue);
    ResetEvent(event_continue_done);
    async_protocol = binding_protocol = filtered_protocol = ((void*)0);
    filtered_sink = ((void*)0);
    http_is_first = (flags & TEST_FIRST_HTTP) != 0;
    first_data_notif = TRUE;
    state = STATE_CONNECTING;
    test_async_req = (flags & TEST_ASYNCREQ) != 0;
    direct_read = (flags & TEST_DIRECT_READ) != 0;
    emulate_prot = (flags & TEST_EMULATEPROT) != 0;
    wait_for_switch = TRUE;
    short_read = (flags & TEST_SHORT_READ) != 0;
    http_post_test = TYMED_NULL;
    redirect_on_continue = test_redirect = (flags & TEST_REDIRECT) != 0;
    test_abort = (flags & TEST_ABORT) != 0;
    impl_protex = (flags & TEST_IMPLPROTEX) != 0;
    empty_file = (flags & TEST_EMPTY) != 0;
    bind_from_cache = (flags & TEST_FROMCACHE) != 0;
    file_with_hash = FALSE;
    security_problem = FALSE;
    reuse_protocol_thread = FALSE;

    bindinfo_options = 0;
    if(flags & TEST_DISABLEAUTOREDIRECT)
        bindinfo_options |= BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS;

    register_filter(mimefilter_test);
}
