
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct event_base {int dummy; } ;
struct TYPE_7__ {char* errstr; int c; scalar_t__ err; } ;
typedef TYPE_1__ redisAsyncContext ;


 scalar_t__ REDIS_OK ;
 int SIGPIPE ;
 int SIG_IGN ;
 int atoi (char*) ;
 int connectCallback ;
 int disconnectCallback ;
 int event_base_dispatch (struct event_base*) ;
 struct event_base* event_base_new () ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int getCallback ;
 int printf (char*,...) ;
 int redisAsyncCommand (TYPE_1__*,int ,char*,char*,...) ;
 TYPE_1__* redisAsyncConnect (char const*,int) ;
 int redisAsyncSetConnectCallback (TYPE_1__*,int ) ;
 int redisAsyncSetDisconnectCallback (TYPE_1__*,int ) ;
 int redisLibeventAttach (TYPE_1__*,struct event_base*) ;
 scalar_t__ redisSecureConnection (int *,char const*,char const*,char const*,char*) ;
 int signal (int ,int ) ;
 int stderr ;
 size_t strlen (char const*) ;

int main (int argc, char **argv) {
    signal(SIGPIPE, SIG_IGN);
    struct event_base *base = event_base_new();
    if (argc < 5) {
        fprintf(stderr,
                "Usage: %s <key> <host> <port> <cert> <certKey> [ca]\n", argv[0]);
        exit(1);
    }

    const char *value = argv[1];
    size_t nvalue = strlen(value);

    const char *hostname = argv[2];
    int port = atoi(argv[3]);

    const char *cert = argv[4];
    const char *certKey = argv[5];
    const char *caCert = argc > 5 ? argv[6] : ((void*)0);

    redisAsyncContext *c = redisAsyncConnect(hostname, port);
    if (c->err) {

        printf("Error: %s\n", c->errstr);
        return 1;
    }
    if (redisSecureConnection(&c->c, caCert, cert, certKey, "sni") != REDIS_OK) {
        printf("SSL Error!\n");
        exit(1);
    }

    redisLibeventAttach(c,base);
    redisAsyncSetConnectCallback(c,connectCallback);
    redisAsyncSetDisconnectCallback(c,disconnectCallback);
    redisAsyncCommand(c, ((void*)0), ((void*)0), "SET key %b", value, nvalue);
    redisAsyncCommand(c, getCallback, (char*)"end-1", "GET key");
    event_base_dispatch(base);
    return 0;
}
