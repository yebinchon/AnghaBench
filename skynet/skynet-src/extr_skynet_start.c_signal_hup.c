
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct skynet_message {size_t sz; int * data; scalar_t__ session; scalar_t__ source; } ;


 size_t MESSAGE_TYPE_SHIFT ;
 scalar_t__ PTYPE_SYSTEM ;
 int skynet_context_push (scalar_t__,struct skynet_message*) ;
 scalar_t__ skynet_handle_findname (char*) ;

__attribute__((used)) static void
signal_hup() {


 struct skynet_message smsg;
 smsg.source = 0;
 smsg.session = 0;
 smsg.data = ((void*)0);
 smsg.sz = (size_t)PTYPE_SYSTEM << MESSAGE_TYPE_SHIFT;
 uint32_t logger = skynet_handle_findname("logger");
 if (logger) {
  skynet_context_push(logger, &smsg);
 }
}
