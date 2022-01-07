
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {char* sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_UNIX ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ close (int) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strncpy (char*,char*,size_t) ;

int
main(int argc, char *argv[])
{
 struct sockaddr_un sock;
 int fd;
 char *path;
 size_t size;
 if (argc != 2) {
  fprintf(stderr, "usage: %s /path/to/socket\n", argv[0]);
  exit(1);
 }
 path = argv[1];
 size = sizeof (sock.sun_path);
 strncpy(sock.sun_path, (char *)path, size - 1);
 sock.sun_path[size - 1] = '\0';

 sock.sun_family = AF_UNIX;
 if ((fd = socket(AF_UNIX, SOCK_DGRAM, 0)) == -1) {
  perror("socket");
  return (1);
 }
 if (bind(fd, (struct sockaddr *)&sock, sizeof (struct sockaddr_un))) {
  perror("bind");
  return (1);
 }
 if (close(fd)) {
  perror("close");
  return (1);
 }
 return (0);
}
