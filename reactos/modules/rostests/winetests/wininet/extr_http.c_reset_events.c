
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ResetEvent (int ) ;
 int complete_event ;
 int conn_close_event ;
 int conn_wait_event ;
 int request_sent_event ;
 int server_req_rec_event ;

__attribute__((used)) static void reset_events(void)
{
    ResetEvent(complete_event);
    ResetEvent(conn_close_event);
    ResetEvent(conn_wait_event);
    ResetEvent(server_req_rec_event);
    ResetEvent(request_sent_event);
}
