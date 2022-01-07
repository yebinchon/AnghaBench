
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Server (int) ;
 int atoi (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
main(int argc, char **argv)
{
 int port;

 if (argc < 2) {
  fprintf(stderr, "Usage: %s <port>\n", argv[0]);
  exit(2);
 }
 port = atoi(argv[1]);
 Server(port);
 exit(0);
}
