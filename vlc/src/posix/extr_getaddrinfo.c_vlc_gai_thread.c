
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_gai_req {int done; int result; int hints; int service; int name; int error; } ;


 int EAI_SYSTEM ;
 int getaddrinfo (int ,int ,int ,int *) ;
 int vlc_sem_post (int *) ;

__attribute__((used)) static void *vlc_gai_thread(void *data)
{
    struct vlc_gai_req *req = data;

    req->error = EAI_SYSTEM;
    req->error = getaddrinfo(req->name, req->service, req->hints,
                             &req->result);
    vlc_sem_post(&req->done);
    return ((void*)0);
}
