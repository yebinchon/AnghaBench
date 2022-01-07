
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;


 void* CTX ;
 int assert (int) ;

__attribute__((used)) static void vlc_h2_error(void *ctx, uint_fast32_t code)
{
    assert(ctx == CTX);
    (void) code;
}
