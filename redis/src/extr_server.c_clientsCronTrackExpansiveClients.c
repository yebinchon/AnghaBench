
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int querybuf; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int unixtime; } ;


 int CLIENTS_PEAK_MEM_USAGE_SLOTS ;
 size_t* ClientsPeakMemInput ;
 size_t* ClientsPeakMemOutput ;
 size_t getClientOutputBufferMemoryUsage (TYPE_1__*) ;
 size_t sdsAllocSize (int ) ;
 TYPE_2__ server ;

int clientsCronTrackExpansiveClients(client *c) {
    size_t in_usage = sdsAllocSize(c->querybuf);
    size_t out_usage = getClientOutputBufferMemoryUsage(c);
    int i = server.unixtime % CLIENTS_PEAK_MEM_USAGE_SLOTS;
    int zeroidx = (i+1) % CLIENTS_PEAK_MEM_USAGE_SLOTS;
    ClientsPeakMemInput[zeroidx] = 0;
    ClientsPeakMemOutput[zeroidx] = 0;


    if (in_usage > ClientsPeakMemInput[i]) ClientsPeakMemInput[i] = in_usage;
    if (out_usage > ClientsPeakMemOutput[i]) ClientsPeakMemOutput[i] = out_usage;

    return 0;
}
