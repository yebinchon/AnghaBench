
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* bitmap; } ;
typedef TYPE_1__* PEXT2_GENERIC_BITMAP ;


 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int RtlGetProcessHeap () ;

void ext2_free_generic_bitmap(PEXT2_GENERIC_BITMAP bitmap)
{
    if (!bitmap)
        return;

    if (bitmap->bitmap)
    {
        RtlFreeHeap(RtlGetProcessHeap(), 0, bitmap->bitmap);
        bitmap->bitmap = 0;
    }

    RtlFreeHeap(RtlGetProcessHeap(), 0, bitmap);
}
