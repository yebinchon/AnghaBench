
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vsid; scalar_t__* tree; } ;
typedef TYPE_1__ MmuVsidInfo ;


 int dumptree (int,scalar_t__) ;
 int fmtout (char*,int,int) ;

void dumpvsid(MmuVsidInfo *vsid)
{
    int i;

    fmtout("vsid %d (%x):\n", vsid->vsid>>4, vsid->vsid<<28);
    for (i = 0; i < 256; i++)
    {
        if (vsid->tree[i])
        {
            dumptree((vsid->vsid<<28) | i << 20, vsid->tree[i]);
        }
    }
}
