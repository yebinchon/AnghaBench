
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {scalar_t__* sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 int connect (int,struct sockaddr*,int) ;
 int socket (int ,int ,int ) ;
 int strncpy (scalar_t__*,char const*,int) ;
 int sway_abort (char*,...) ;

int ipc_open_socket(const char *socket_path) {
 struct sockaddr_un addr;
 int socketfd;
 if ((socketfd = socket(AF_UNIX, SOCK_STREAM, 0)) == -1) {
  sway_abort("Unable to open Unix socket");
 }
 addr.sun_family = AF_UNIX;
 strncpy(addr.sun_path, socket_path, sizeof(addr.sun_path) - 1);
 addr.sun_path[sizeof(addr.sun_path) - 1] = 0;
 int l = sizeof(struct sockaddr_un);
 if (connect(socketfd, (struct sockaddr *)&addr, l) == -1) {
  sway_abort("Unable to connect to %s", socket_path);
 }
 return socketfd;
}
