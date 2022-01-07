
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* errstr; scalar_t__ err; } ;
typedef TYPE_1__ redisAsyncContext ;
typedef int CFRunLoopRef ;


 int CFRunLoopGetCurrent () ;
 int CFRunLoopRun () ;
 int SIGPIPE ;
 int SIG_IGN ;
 int connectCallback ;
 int disconnectCallback ;
 int getCallback ;
 int printf (char*,...) ;
 int redisAsyncCommand (TYPE_1__*,int ,char*,char*,...) ;
 TYPE_1__* redisAsyncConnect (char*,int) ;
 int redisAsyncSetConnectCallback (TYPE_1__*,int ) ;
 int redisAsyncSetDisconnectCallback (TYPE_1__*,int ) ;
 int redisMacOSAttach (TYPE_1__*,int ) ;
 int signal (int ,int ) ;
 int strlen (char*) ;

int main (int argc, char **argv) {
    signal(SIGPIPE, SIG_IGN);

    CFRunLoopRef loop = CFRunLoopGetCurrent();
    if( !loop ) {
        printf("Error: Cannot get current run loop\n");
        return 1;
    }

    redisAsyncContext *c = redisAsyncConnect("127.0.0.1", 6379);
    if (c->err) {

        printf("Error: %s\n", c->errstr);
        return 1;
    }

    redisMacOSAttach(c, loop);

    redisAsyncSetConnectCallback(c,connectCallback);
    redisAsyncSetDisconnectCallback(c,disconnectCallback);

    redisAsyncCommand(c, ((void*)0), ((void*)0), "SET key %b", argv[argc-1], strlen(argv[argc-1]));
    redisAsyncCommand(c, getCallback, (char*)"end-1", "GET key");

    CFRunLoopRun();

    return 0;
}
