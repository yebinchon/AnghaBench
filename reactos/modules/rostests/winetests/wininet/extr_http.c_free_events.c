
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (int ) ;
 int complete_event ;
 int conn_close_event ;
 int conn_wait_event ;
 int request_sent_event ;
 int server_req_rec_event ;

__attribute__((used)) static void free_events(void)
{
    CloseHandle(complete_event);
    CloseHandle(conn_close_event);
    CloseHandle(conn_wait_event);
    CloseHandle(server_req_rec_event);
    CloseHandle(request_sent_event);
}
