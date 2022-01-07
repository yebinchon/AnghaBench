
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;


 size_t MESSAGE_TYPE_SHIFT ;
 int PTYPE_TAG_ALLOCSESSION ;
 int PTYPE_TAG_DONTCOPY ;
 int assert (int) ;
 int memcpy (char*,void*,size_t) ;
 int skynet_context_newsession (struct skynet_context*) ;
 char* skynet_malloc (size_t) ;

__attribute__((used)) static void
_filter_args(struct skynet_context * context, int type, int *session, void ** data, size_t * sz) {
 int needcopy = !(type & PTYPE_TAG_DONTCOPY);
 int allocsession = type & PTYPE_TAG_ALLOCSESSION;
 type &= 0xff;

 if (allocsession) {
  assert(*session == 0);
  *session = skynet_context_newsession(context);
 }

 if (needcopy && *data) {
  char * msg = skynet_malloc(*sz+1);
  memcpy(msg, *data, *sz);
  msg[*sz] = '\0';
  *data = msg;
 }

 *sz |= (size_t)type << MESSAGE_TYPE_SHIFT;
}
