
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_18__ {TYPE_6__* next; TYPE_5__* prev; } ;
struct TYPE_17__ {TYPE_8__ l; } ;
struct TYPE_19__ {TYPE_7__ u; } ;
typedef TYPE_9__ UpVal ;
struct TYPE_11__ {TYPE_5__* prev; } ;
struct TYPE_12__ {TYPE_1__ l; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
struct TYPE_13__ {TYPE_6__* next; } ;
struct TYPE_14__ {TYPE_3__ l; } ;
struct TYPE_15__ {TYPE_4__ u; } ;



__attribute__((used)) static void unlinkupval(UpVal*uv){
uv->u.l.next->u.l.prev=uv->u.l.prev;
uv->u.l.prev->u.l.next=uv->u.l.next;
}
