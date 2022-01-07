
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {int lastinteraction; int querybuf_peak; int flags; void* pending_querybuf; void* querybuf; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {int unixtime; } ;


 int CLIENT_MASTER ;
 size_t LIMIT_PENDING_QUERYBUF ;
 size_t PROTO_MBULK_BIG_ARG ;
 size_t sdsAllocSize (void*) ;
 void* sdsRemoveFreeSpace (void*) ;
 int sdsavail (void*) ;
 size_t sdslen (void*) ;
 TYPE_2__ server ;

int clientsCronResizeQueryBuffer(client *c) {
    size_t querybuf_size = sdsAllocSize(c->querybuf);
    time_t idletime = server.unixtime - c->lastinteraction;




    if (querybuf_size > PROTO_MBULK_BIG_ARG &&
         ((querybuf_size/(c->querybuf_peak+1)) > 2 ||
          idletime > 2))
    {


        if (sdsavail(c->querybuf) > 1024*4) {
            c->querybuf = sdsRemoveFreeSpace(c->querybuf);
        }
    }


    c->querybuf_peak = 0;






    if (c->flags & CLIENT_MASTER) {



        size_t pending_querybuf_size = sdsAllocSize(c->pending_querybuf);
        if(pending_querybuf_size > LIMIT_PENDING_QUERYBUF &&
           sdslen(c->pending_querybuf) < (pending_querybuf_size/2))
        {
            c->pending_querybuf = sdsRemoveFreeSpace(c->pending_querybuf);
        }
    }
    return 0;
}
