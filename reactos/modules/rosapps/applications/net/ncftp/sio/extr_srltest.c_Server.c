
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;


 int SAccept (int,struct sockaddr_in*,int) ;
 int SNewStreamServer (int,int,int ,int) ;
 int ServeOneClient (int,struct sockaddr_in*) ;
 int WNOHANG ;
 int close (int) ;
 int errno ;
 int exit (int) ;
 int fork () ;
 int fprintf (int ,char*,int,char*) ;
 scalar_t__ getpid () ;
 int kReUseAddrYes ;
 int kTimeoutErr ;
 int perror (char*) ;
 int printf (char*,int) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ waitpid (int,int *,int ) ;

__attribute__((used)) static void
Server(int port)
{
 int sockfd, newsockfd;
 struct sockaddr_in cliAddr;
 int pid;

 sockfd = SNewStreamServer(port, 3, kReUseAddrYes, 3);
 if (sockfd < 0) {
  perror("Server setup failed");
  exit(1);
 }

 printf("server[%d]: started.\n", (int) getpid());
 for(;;) {
  while (waitpid(-1, ((void*)0), WNOHANG) > 0) ;
  newsockfd = SAccept(sockfd, &cliAddr, 5);
  if (newsockfd < 0) {
   if (newsockfd == kTimeoutErr)
    printf("server[%d]: idle\n", (int) getpid());
   else
    fprintf(stderr, "server[%d]: accept error: %s\n",
     (int) getpid(), strerror(errno));
  } else if ((pid = fork()) < 0) {
   fprintf(stderr, "server[%d]: fork error: %s\n",
    (int) getpid(), strerror(errno));
   exit(1);
  } else if (pid == 0) {
   ServeOneClient(newsockfd, &cliAddr);
   exit(0);
  } else {

   (void) close(newsockfd);
  }
 }
}
