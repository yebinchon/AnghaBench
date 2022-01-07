
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_response {struct ipc_response* payload; } ;


 int free (struct ipc_response*) ;

void free_ipc_response(struct ipc_response *response) {
 free(response->payload);
 free(response);
}
