
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {scalar_t__ (* read_cb ) (int ,void*,size_t) ;int opaque; } ;
typedef TYPE_2__ access_sys_t ;


 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ stub1 (int ,void*,size_t) ;

__attribute__((used)) static ssize_t Read(stream_t *access, void *buf, size_t len)
{
    access_sys_t *sys = access->p_sys;

    ssize_t val = sys->read_cb(sys->opaque, buf, len);

    if (val < 0) {
        msg_Err(access, "read error");
        val = 0;
    }

    return val;
}
