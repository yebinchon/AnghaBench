
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snlua {int dummy; } ;
struct skynet_context {int dummy; } ;


 int PTYPE_TAG_DONTCOPY ;
 int launch_cb ;
 int memcpy (char*,char const*,int) ;
 int skynet_callback (struct skynet_context*,struct snlua*,int ) ;
 char* skynet_command (struct skynet_context*,char*,int *) ;
 char* skynet_malloc (int) ;
 int skynet_send (struct skynet_context*,int ,int ,int ,int ,char*,int) ;
 int strlen (char const*) ;
 int strtoul (char const*,int *,int) ;

int
snlua_init(struct snlua *l, struct skynet_context *ctx, const char * args) {
 int sz = strlen(args);
 char * tmp = skynet_malloc(sz);
 memcpy(tmp, args, sz);
 skynet_callback(ctx, l , launch_cb);
 const char * self = skynet_command(ctx, "REG", ((void*)0));
 uint32_t handle_id = strtoul(self+1, ((void*)0), 16);

 skynet_send(ctx, 0, handle_id, PTYPE_TAG_DONTCOPY,0, tmp, sz);
 return 0;
}
