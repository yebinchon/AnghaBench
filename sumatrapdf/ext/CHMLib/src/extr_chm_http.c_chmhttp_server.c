
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct chmHttpSlave {int fd; struct chmHttpServer* server; } ;
struct chmHttpServer {int socket; int * file; } ;
typedef int pthread_t ;
typedef int one ;


 int AF_INET ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int _slave ;
 int accept (int,struct sockaddr*,int*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int * chm_open (char const*) ;
 int close (int) ;
 char* config_bind ;
 int config_port ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,...) ;
 int free (struct chmHttpSlave*) ;
 int htons (int) ;
 int inet_addr (char*) ;
 int listen (int,int) ;
 scalar_t__ malloc (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int perror (char*) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_detach (int ) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static void chmhttp_server(const char *filename)
{
    struct chmHttpServer server;
    struct chmHttpSlave *slave;
    struct sockaddr_in bindAddr;
    int addrLen;
    pthread_t tid;
    int one = 1;


    if ((server.file = chm_open(filename)) == ((void*)0))
    {
        fprintf(stderr, "couldn't open file '%s'\n", filename);
        exit(2);
    }


    server.socket = socket(AF_INET, SOCK_STREAM, 0);
    memset(&bindAddr, 0, sizeof(struct sockaddr_in));
    bindAddr.sin_family = AF_INET;
    bindAddr.sin_port = htons(config_port);
    bindAddr.sin_addr.s_addr = inet_addr(config_bind);

    if (setsockopt (server.socket, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one)))
    {
        perror ("setsockopt");
        exit(3);
    }

    if (bind(server.socket,
             (struct sockaddr *)&bindAddr,
             sizeof(struct sockaddr_in)) < 0)
    {
        close(server.socket);
        server.socket = -1;
        fprintf(stderr, "couldn't bind to ip %s port %d\n", config_bind, config_port);
        exit(3);
    }


    listen(server.socket, 75);
    addrLen = sizeof(struct sockaddr);
    while(1)
    {
        slave = (struct chmHttpSlave *)malloc(sizeof(struct chmHttpSlave));
        slave->server = &server;
        slave->fd = accept(server.socket, (struct sockaddr *)&bindAddr, &addrLen);
        if (slave->fd == -1)
            break;

        pthread_create(&tid, ((void*)0), _slave, (void *)slave);
        pthread_detach(tid);
    }
    free(slave);
}
