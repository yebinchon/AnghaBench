
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_display_t ;


 int Swap (int *) ;

__attribute__((used)) static void LocalSwapchainSwap( void *opaque )
{
    vout_display_t *vd = opaque;
    Swap( vd );
}
