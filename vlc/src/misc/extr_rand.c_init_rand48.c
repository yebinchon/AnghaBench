
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int init; int subi; } ;


 TYPE_1__ rand48 ;
 int* subi ;
 int vlc_rand_bytes (int ,int) ;

__attribute__((used)) static void init_rand48 (void)
{
    if (!rand48.init)
    {
        vlc_rand_bytes (rand48.subi, sizeof (rand48.subi));
        rand48.init = 1;




    }
}
