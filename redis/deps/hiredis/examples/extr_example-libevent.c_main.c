
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct timeval {int tv_sec; int member_0; } ;
struct event_base {int dummy; } ;
struct TYPE_10__ {struct timeval* timeout; int member_0; } ;
typedef TYPE_1__ redisOptions ;
struct TYPE_11__ {char* errstr; scalar_t__ err; } ;
typedef TYPE_2__ redisAsyncContext ;


 int REDIS_OPTIONS_SET_TCP (TYPE_1__*,char*,int) ;
 int SIGPIPE ;
 int SIG_IGN ;
 int connectCallback ;
 int disconnectCallback ;
 int event_base_dispatch (struct event_base*) ;
 struct event_base* event_base_new () ;
 int getCallback ;
 int printf (char*,char*) ;
 int redisAsyncCommand (TYPE_2__*,int ,char*,char*,...) ;
 TYPE_2__* redisAsyncConnectWithOptions (TYPE_1__*) ;
 int redisAsyncSetConnectCallback (TYPE_2__*,int ) ;
 int redisAsyncSetDisconnectCallback (TYPE_2__*,int ) ;
 int redisLibeventAttach (TYPE_2__*,struct event_base*) ;
 int signal (int ,int ) ;
 int strlen (char*) ;

int main (int argc, char **argv) {
    signal(SIGPIPE, SIG_IGN);
    struct event_base *base = event_base_new();
    redisOptions options = {0};
    REDIS_OPTIONS_SET_TCP(&options, "127.0.0.1", 6379);
    struct timeval tv = {0};
    tv.tv_sec = 1;
    options.timeout = &tv;


    redisAsyncContext *c = redisAsyncConnectWithOptions(&options);
    if (c->err) {

        printf("Error: %s\n", c->errstr);
        return 1;
    }

    redisLibeventAttach(c,base);
    redisAsyncSetConnectCallback(c,connectCallback);
    redisAsyncSetDisconnectCallback(c,disconnectCallback);
    redisAsyncCommand(c, ((void*)0), ((void*)0), "SET key %b", argv[argc-1], strlen(argv[argc-1]));
    redisAsyncCommand(c, getCallback, (char*)"end-1", "GET key");
    event_base_dispatch(base);
    return 0;
}
