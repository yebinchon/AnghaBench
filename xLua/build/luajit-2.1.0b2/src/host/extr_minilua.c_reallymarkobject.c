
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_23__ ;
typedef struct TYPE_29__ TYPE_21__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_19__ ;
typedef struct TYPE_26__ TYPE_17__ ;
typedef struct TYPE_25__ TYPE_15__ ;


struct TYPE_33__ {TYPE_6__* gray; } ;
typedef TYPE_4__ global_State ;
struct TYPE_31__ {int value; } ;
struct TYPE_34__ {TYPE_2__ u; int * v; } ;
typedef TYPE_5__ UpVal ;
typedef int Table ;
struct TYPE_28__ {int tt; } ;
struct TYPE_35__ {TYPE_1__ gch; } ;
struct TYPE_32__ {TYPE_6__* gclist; } ;
struct TYPE_30__ {TYPE_3__ c; } ;
struct TYPE_29__ {TYPE_6__* gclist; } ;
struct TYPE_27__ {TYPE_6__* gclist; } ;
struct TYPE_26__ {TYPE_6__* gclist; } ;
struct TYPE_25__ {int * env; int * metatable; } ;
typedef TYPE_6__ GCObject ;


 TYPE_23__* gco2cl (TYPE_6__*) ;
 TYPE_21__* gco2h (TYPE_6__*) ;
 TYPE_19__* gco2p (TYPE_6__*) ;
 TYPE_17__* gco2th (TYPE_6__*) ;
 TYPE_15__* gco2u (TYPE_6__*) ;
 TYPE_5__* gco2uv (TYPE_6__*) ;
 int gray2black (TYPE_6__*) ;
 int markobject (TYPE_4__*,int *) ;
 int markvalue (TYPE_4__*,int *) ;
 int white2gray (TYPE_6__*) ;

__attribute__((used)) static void reallymarkobject(global_State*g,GCObject*o){
white2gray(o);
switch(o->gch.tt){
case 4:{
return;
}
case 7:{
Table*mt=gco2u(o)->metatable;
gray2black(o);
if(mt)markobject(g,mt);
markobject(g,gco2u(o)->env);
return;
}
case(8+2):{
UpVal*uv=gco2uv(o);
markvalue(g,uv->v);
if(uv->v==&uv->u.value)
gray2black(o);
return;
}
case 6:{
gco2cl(o)->c.gclist=g->gray;
g->gray=o;
break;
}
case 5:{
gco2h(o)->gclist=g->gray;
g->gray=o;
break;
}
case 8:{
gco2th(o)->gclist=g->gray;
g->gray=o;
break;
}
case(8+1):{
gco2p(o)->gclist=g->gray;
g->gray=o;
break;
}
default:;
}
}
