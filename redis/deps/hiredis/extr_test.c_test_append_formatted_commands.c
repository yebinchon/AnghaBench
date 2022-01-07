
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int dummy; } ;
typedef int redisReply ;
typedef int redisContext ;


 scalar_t__ REDIS_OK ;
 int assert (int) ;
 int disconnect (int *,int ) ;
 int * do_connect (struct config) ;
 int free (char*) ;
 int freeReplyObject (int *) ;
 scalar_t__ redisAppendFormattedCommand (int *,char*,int) ;
 int redisFormatCommand (char**,char*) ;
 scalar_t__ redisGetReply (int *,void*) ;
 int test (char*) ;
 int test_cond (int) ;

__attribute__((used)) static void test_append_formatted_commands(struct config config) {
    redisContext *c;
    redisReply *reply;
    char *cmd;
    int len;

    c = do_connect(config);

    test("Append format command: ");

    len = redisFormatCommand(&cmd, "SET foo bar");

    test_cond(redisAppendFormattedCommand(c, cmd, len) == REDIS_OK);

    assert(redisGetReply(c, (void*)&reply) == REDIS_OK);

    free(cmd);
    freeReplyObject(reply);

    disconnect(c, 0);
}
