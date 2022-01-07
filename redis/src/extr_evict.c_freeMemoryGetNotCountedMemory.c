
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
typedef int client ;
struct TYPE_2__ {scalar_t__ aof_state; int aof_buf; int slaves; } ;


 scalar_t__ AOF_OFF ;
 scalar_t__ aofRewriteBufferSize () ;
 scalar_t__ getClientOutputBufferMemoryUsage (int *) ;
 int listLength (int ) ;
 int * listNext (int *) ;
 int * listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 scalar_t__ sdsalloc (int ) ;
 TYPE_1__ server ;

size_t freeMemoryGetNotCountedMemory(void) {
    size_t overhead = 0;
    int slaves = listLength(server.slaves);

    if (slaves) {
        listIter li;
        listNode *ln;

        listRewind(server.slaves,&li);
        while((ln = listNext(&li))) {
            client *slave = listNodeValue(ln);
            overhead += getClientOutputBufferMemoryUsage(slave);
        }
    }
    if (server.aof_state != AOF_OFF) {
        overhead += sdsalloc(server.aof_buf)+aofRewriteBufferSize();
    }
    return overhead;
}
