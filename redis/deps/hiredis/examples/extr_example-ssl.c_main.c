
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct timeval {int member_0; int member_1; } ;
struct TYPE_14__ {char* str; scalar_t__ type; unsigned int elements; TYPE_1__** element; int integer; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_15__ {struct timeval* timeout; int member_0; } ;
typedef TYPE_3__ redisOptions ;
struct TYPE_16__ {char* errstr; scalar_t__ err; } ;
typedef TYPE_4__ redisContext ;
struct TYPE_13__ {char* str; } ;


 scalar_t__ REDIS_OK ;
 int REDIS_OPTIONS_SET_TCP (TYPE_3__*,char const*,int) ;
 scalar_t__ REDIS_REPLY_ARRAY ;
 int atoi (char*) ;
 int exit (int) ;
 int freeReplyObject (TYPE_2__*) ;
 int printf (char*,...) ;
 TYPE_2__* redisCommand (TYPE_4__*,char*,...) ;
 TYPE_4__* redisConnectWithOptions (TYPE_3__*) ;
 int redisFree (TYPE_4__*) ;
 scalar_t__ redisSecureConnection (TYPE_4__*,char const*,char const*,char const*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

int main(int argc, char **argv) {
    unsigned int j;
    redisContext *c;
    redisReply *reply;
    if (argc < 4) {
        printf("Usage: %s <host> <port> <cert> <key> [ca]\n", argv[0]);
        exit(1);
    }
    const char *hostname = (argc > 1) ? argv[1] : "127.0.0.1";
    int port = atoi(argv[2]);
    const char *cert = argv[3];
    const char *key = argv[4];
    const char *ca = argc > 4 ? argv[5] : ((void*)0);

    struct timeval tv = { 1, 500000 };
    redisOptions options = {0};
    REDIS_OPTIONS_SET_TCP(&options, hostname, port);
    options.timeout = &tv;
    c = redisConnectWithOptions(&options);

    if (c == ((void*)0) || c->err) {
        if (c) {
            printf("Connection error: %s\n", c->errstr);
            redisFree(c);
        } else {
            printf("Connection error: can't allocate redis context\n");
        }
        exit(1);
    }

    if (redisSecureConnection(c, ca, cert, key, "sni") != REDIS_OK) {
        printf("Couldn't initialize SSL!\n");
        printf("Error: %s\n", c->errstr);
        redisFree(c);
        exit(1);
    }


    reply = redisCommand(c,"PING");
    printf("PING: %s\n", reply->str);
    freeReplyObject(reply);


    reply = redisCommand(c,"SET %s %s", "foo", "hello world");
    printf("SET: %s\n", reply->str);
    freeReplyObject(reply);


    reply = redisCommand(c,"SET %b %b", "bar", (size_t) 3, "hello", (size_t) 5);
    printf("SET (binary API): %s\n", reply->str);
    freeReplyObject(reply);


    reply = redisCommand(c,"GET foo");
    printf("GET foo: %s\n", reply->str);
    freeReplyObject(reply);

    reply = redisCommand(c,"INCR counter");
    printf("INCR counter: %lld\n", reply->integer);
    freeReplyObject(reply);

    reply = redisCommand(c,"INCR counter");
    printf("INCR counter: %lld\n", reply->integer);
    freeReplyObject(reply);


    reply = redisCommand(c,"DEL mylist");
    freeReplyObject(reply);
    for (j = 0; j < 10; j++) {
        char buf[64];

        snprintf(buf,64,"%u",j);
        reply = redisCommand(c,"LPUSH mylist element-%s", buf);
        freeReplyObject(reply);
    }


    reply = redisCommand(c,"LRANGE mylist 0 -1");
    if (reply->type == REDIS_REPLY_ARRAY) {
        for (j = 0; j < reply->elements; j++) {
            printf("%u) %s\n", j, reply->element[j]->str);
        }
    }
    freeReplyObject(reply);


    redisFree(c);

    return 0;
}
