
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;


 int AF_UNIX ;
 char* getenv (char*) ;
 int getpid () ;
 int getuid () ;
 struct sockaddr_un* malloc (int) ;
 int snprintf (int ,int,char*,char const*,int,int) ;
 int sway_abort (char*) ;

struct sockaddr_un *ipc_user_sockaddr(void) {
 struct sockaddr_un *ipc_sockaddr = malloc(sizeof(struct sockaddr_un));
 if (ipc_sockaddr == ((void*)0)) {
  sway_abort("Can't allocate ipc_sockaddr");
 }

 ipc_sockaddr->sun_family = AF_UNIX;
 int path_size = sizeof(ipc_sockaddr->sun_path);


 const char *dir = getenv("XDG_RUNTIME_DIR");
 if (!dir) {
  dir = "/tmp";
 }
 if (path_size <= snprintf(ipc_sockaddr->sun_path, path_size,
   "%s/sway-ipc.%i.%i.sock", dir, getuid(), getpid())) {
  sway_abort("Socket path won't fit into ipc_sockaddr->sun_path");
 }

 return ipc_sockaddr;
}
