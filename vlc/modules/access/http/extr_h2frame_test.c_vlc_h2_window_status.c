
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 void* CTX ;
 int assert (int) ;

__attribute__((used)) static void vlc_h2_window_status(void *ctx, uint32_t *rcwd)
{
    assert(ctx == CTX);
    *rcwd = (1u << 31) - 1;
}
