
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ const cid; } ;
typedef TYPE_1__ vlc_v4l2_ctrl_name_t ;
typedef scalar_t__ uint32_t ;
typedef int int32_t ;



__attribute__((used)) static int cidcmp (const void *a, const void *b)
{
    const uint32_t *id = a;
    const vlc_v4l2_ctrl_name_t *name = b;

    return (int32_t)(*id - name->cid);
}
