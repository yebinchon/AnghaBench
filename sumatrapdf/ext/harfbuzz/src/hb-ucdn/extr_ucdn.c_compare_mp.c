
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int from; } ;
typedef TYPE_1__ MirrorPair ;



__attribute__((used)) static int compare_mp(const void *a, const void *b)
{
    MirrorPair *mpa = (MirrorPair *)a;
    MirrorPair *mpb = (MirrorPair *)b;
    return mpa->from - mpb->from;
}
