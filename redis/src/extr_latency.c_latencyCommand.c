
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct latencyTimeSeries {int dummy; } ;
typedef int sds ;
typedef int dictEntry ;
struct TYPE_14__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_15__ {int latency_events; } ;
struct TYPE_13__ {int * ptr; } ;


 int addReplyArrayLen (TYPE_2__*,int ) ;
 int addReplyErrorFormat (TYPE_2__*,char*,char*) ;
 int addReplyHelp (TYPE_2__*,char const**) ;
 int addReplyLongLong (TYPE_2__*,int) ;
 int addReplySubcommandSyntaxError (TYPE_2__*) ;
 int addReplyVerbatim (TYPE_2__*,int ,int ,char*) ;
 int createLatencyReport () ;
 struct latencyTimeSeries* dictFetchValue (int ,int *) ;
 int * dictFind (int ,int *) ;
 char* dictGetKey (int *) ;
 struct latencyTimeSeries* dictGetVal (int *) ;
 int latencyCommandGenSparkeline (char*,struct latencyTimeSeries*) ;
 int latencyCommandReplyWithLatestEvents (TYPE_2__*) ;
 int latencyCommandReplyWithSamples (TYPE_2__*,struct latencyTimeSeries*) ;
 int latencyResetEvent (int *) ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 TYPE_3__ server ;
 int strcasecmp (int *,char*) ;

void latencyCommand(client *c) {
    const char *help[] = {
"DOCTOR              -- Returns a human readable latency analysis report.",
"GRAPH   <event>     -- Returns an ASCII latency graph for the event class.",
"HISTORY <event>     -- Returns time-latency samples for the event class.",
"LATEST              -- Returns the latest latency samples for all events.",
"RESET   [event ...] -- Resets latency data of one or more event classes.",
"                       (default: reset all data for all event classes)",
"HELP                -- Prints this help.",
((void*)0)
    };
    struct latencyTimeSeries *ts;

    if (!strcasecmp(c->argv[1]->ptr,"history") && c->argc == 3) {

        ts = dictFetchValue(server.latency_events,c->argv[2]->ptr);
        if (ts == ((void*)0)) {
            addReplyArrayLen(c,0);
        } else {
            latencyCommandReplyWithSamples(c,ts);
        }
    } else if (!strcasecmp(c->argv[1]->ptr,"graph") && c->argc == 3) {

        sds graph;
        dictEntry *de;
        char *event;

        de = dictFind(server.latency_events,c->argv[2]->ptr);
        if (de == ((void*)0)) goto nodataerr;
        ts = dictGetVal(de);
        event = dictGetKey(de);

        graph = latencyCommandGenSparkeline(event,ts);
        addReplyVerbatim(c,graph,sdslen(graph),"txt");
        sdsfree(graph);
    } else if (!strcasecmp(c->argv[1]->ptr,"latest") && c->argc == 2) {

        latencyCommandReplyWithLatestEvents(c);
    } else if (!strcasecmp(c->argv[1]->ptr,"doctor") && c->argc == 2) {

        sds report = createLatencyReport();

        addReplyVerbatim(c,report,sdslen(report),"txt");
        sdsfree(report);
    } else if (!strcasecmp(c->argv[1]->ptr,"reset") && c->argc >= 2) {

        if (c->argc == 2) {
            addReplyLongLong(c,latencyResetEvent(((void*)0)));
        } else {
            int j, resets = 0;

            for (j = 2; j < c->argc; j++)
                resets += latencyResetEvent(c->argv[j]->ptr);
            addReplyLongLong(c,resets);
        }
    } else if (!strcasecmp(c->argv[1]->ptr,"help") && c->argc >= 2) {
        addReplyHelp(c, help);
    } else {
        addReplySubcommandSyntaxError(c);
    }
    return;

nodataerr:


    addReplyErrorFormat(c,
        "No samples available for event '%s'", (char*) c->argv[2]->ptr);
}
