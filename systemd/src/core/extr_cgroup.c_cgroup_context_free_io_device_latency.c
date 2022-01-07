
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* path; int io_device_latencies; } ;
typedef TYPE_1__ CGroupIODeviceLatency ;
typedef TYPE_1__ CGroupContext ;


 int LIST_REMOVE (int ,int ,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int device_latencies ;
 int free (TYPE_1__*) ;

void cgroup_context_free_io_device_latency(CGroupContext *c, CGroupIODeviceLatency *l) {
        assert(c);
        assert(l);

        LIST_REMOVE(device_latencies, c->io_device_latencies, l);
        free(l->path);
        free(l);
}
