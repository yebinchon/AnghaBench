
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct slave {int fd; int status; } ;
struct remote_name {char* name; int handle; } ;
struct harbor {int ctx; struct slave* s; } ;
typedef int rn ;


 int GLOBALNAME_LENGTH ;
 int REMOTE_MAX ;
 int STATUS_HANDSHAKE ;
 int STATUS_HEADER ;
 int dispatch_queue (struct harbor*,int) ;
 int handshake (struct harbor*,int) ;
 int memcpy (char*,char const*,int) ;
 int memset (struct remote_name*,int ,int) ;
 int skynet_error (int ,char*,...) ;
 int skynet_socket_start (int ,int) ;
 int sscanf (char*,char*,int*,int*) ;
 int update_name (struct harbor*,char*,int ) ;

__attribute__((used)) static void
harbor_command(struct harbor * h, const char * msg, size_t sz, int session, uint32_t source) {
 const char * name = msg + 2;
 int s = (int)sz;
 s -= 2;
 switch(msg[0]) {
 case 'N' : {
  if (s <=0 || s>= GLOBALNAME_LENGTH) {
   skynet_error(h->ctx, "Invalid global name %s", name);
   return;
  }
  struct remote_name rn;
  memset(&rn, 0, sizeof(rn));
  memcpy(rn.name, name, s);
  rn.handle = source;
  update_name(h, rn.name, rn.handle);
  break;
 }
 case 'S' :
 case 'A' : {
  char buffer[s+1];
  memcpy(buffer, name, s);
  buffer[s] = 0;
  int fd=0, id=0;
  sscanf(buffer, "%d %d",&fd,&id);
  if (fd == 0 || id <= 0 || id>=REMOTE_MAX) {
   skynet_error(h->ctx, "Invalid command %c %s", msg[0], buffer);
   return;
  }
  struct slave * slave = &h->s[id];
  if (slave->fd != 0) {
   skynet_error(h->ctx, "Harbor %d alreay exist", id);
   return;
  }
  slave->fd = fd;

  skynet_socket_start(h->ctx, fd);
  handshake(h, id);
  if (msg[0] == 'S') {
   slave->status = STATUS_HANDSHAKE;
  } else {
   slave->status = STATUS_HEADER;
   dispatch_queue(h,id);
  }
  break;
 }
 default:
  skynet_error(h->ctx, "Unknown command %s", msg);
  return;
 }
}
