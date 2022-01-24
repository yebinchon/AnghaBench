#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; char* str; } ;
typedef  TYPE_1__ redisReply ;
struct TYPE_6__ {int /*<<< orphan*/  interval; } ;

/* Variables and functions */
 long LONG_MIN ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 TYPE_4__ config ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,long,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void) {
    redisReply *reply;
    long aux, requests = 0;
    int i = 0;

    while(1) {
        char buf[64];
        int j;

        reply = FUNC5(context,"INFO");
        if (reply->type == REDIS_REPLY_ERROR) {
            FUNC4("ERROR: %s\n", reply->str);
            FUNC1(1);
        }

        if ((i++ % 20) == 0) {
            FUNC4(
"------- data ------ --------------------- load -------------------- - child -\n"
"keys       mem      clients blocked requests            connections          \n");
        }

        /* Keys */
        aux = 0;
        for (j = 0; j < 20; j++) {
            long k;

            FUNC6(buf,"db%d:keys",j);
            k = FUNC3(reply->str,buf);
            if (k == LONG_MIN) continue;
            aux += k;
        }
        FUNC6(buf,"%ld",aux);
        FUNC4("%-11s",buf);

        /* Used memory */
        aux = FUNC3(reply->str,"used_memory");
        FUNC0(buf,aux);
        FUNC4("%-8s",buf);

        /* Clients */
        aux = FUNC3(reply->str,"connected_clients");
        FUNC6(buf,"%ld",aux);
        FUNC4(" %-8s",buf);

        /* Blocked (BLPOPPING) Clients */
        aux = FUNC3(reply->str,"blocked_clients");
        FUNC6(buf,"%ld",aux);
        FUNC4("%-8s",buf);

        /* Requests */
        aux = FUNC3(reply->str,"total_commands_processed");
        FUNC6(buf,"%ld (+%ld)",aux,requests == 0 ? 0 : aux-requests);
        FUNC4("%-19s",buf);
        requests = aux;

        /* Connections */
        aux = FUNC3(reply->str,"total_connections_received");
        FUNC6(buf,"%ld",aux);
        FUNC4(" %-12s",buf);

        /* Children */
        aux = FUNC3(reply->str,"bgsave_in_progress");
        aux |= FUNC3(reply->str,"aof_rewrite_in_progress") << 1;
        aux |= FUNC3(reply->str,"loading") << 2;
        switch(aux) {
        case 0: break;
        case 1:
            FUNC4("SAVE");
            break;
        case 2:
            FUNC4("AOF");
            break;
        case 3:
            FUNC4("SAVE+AOF");
            break;
        case 4:
            FUNC4("LOAD");
            break;
        }

        FUNC4("\n");
        FUNC2(reply);
        FUNC7(config.interval);
    }
}