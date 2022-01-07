
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int streamCG ;
struct TYPE_3__ {int * cgroups; } ;
typedef TYPE_1__ stream ;
typedef scalar_t__ sds ;


 int * raxFind (int *,unsigned char*,int ) ;
 int * raxNotFound ;
 int sdslen (scalar_t__) ;

streamCG *streamLookupCG(stream *s, sds groupname) {
    if (s->cgroups == ((void*)0)) return ((void*)0);
    streamCG *cg = raxFind(s->cgroups,(unsigned char*)groupname,
                           sdslen(groupname));
    return (cg == raxNotFound) ? ((void*)0) : cg;
}
