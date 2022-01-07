
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;


 int VLC_UNUSED (int *) ;
 int kvaUnlockBuffer () ;

__attribute__((used)) static void KVAUnlock( picture_t *picture )
{
    VLC_UNUSED( picture );

    kvaUnlockBuffer();
}
