
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 void* complete_event ;
 void* conn_close_event ;
 void* conn_wait_event ;
 void* request_sent_event ;
 void* server_req_rec_event ;

__attribute__((used)) static void init_events(void)
{
    complete_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    conn_close_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    conn_wait_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    server_req_rec_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    request_sent_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
}
