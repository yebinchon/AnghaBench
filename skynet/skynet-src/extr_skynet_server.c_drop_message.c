
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_message {int source; int data; } ;
struct drop_t {int handle; } ;


 int PTYPE_ERROR ;
 int assert (int ) ;
 int skynet_free (int ) ;
 int skynet_send (int *,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static void
drop_message(struct skynet_message *msg, void *ud) {
 struct drop_t *d = ud;
 skynet_free(msg->data);
 uint32_t source = d->handle;
 assert(source);

 skynet_send(((void*)0), source, msg->source, PTYPE_ERROR, 0, ((void*)0), 0);
}
