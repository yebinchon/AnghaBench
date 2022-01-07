
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct remote_message {int type; } ;


 int PTYPE_SYSTEM ;
 scalar_t__ REMOTE ;
 int assert (int) ;
 scalar_t__ invalid_type (int ) ;
 int skynet_context_send (scalar_t__,struct remote_message*,int,int ,int ,int) ;

void
skynet_harbor_send(struct remote_message *rmsg, uint32_t source, int session) {
 assert(invalid_type(rmsg->type) && REMOTE);
 skynet_context_send(REMOTE, rmsg, sizeof(*rmsg) , source, PTYPE_SYSTEM , session);
}
