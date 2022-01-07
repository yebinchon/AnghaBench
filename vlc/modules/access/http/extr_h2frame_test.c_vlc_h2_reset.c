
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_fast32_t ;


 void* CTX ;
 int assert (int) ;
 scalar_t__ remote_error ;

__attribute__((used)) static int vlc_h2_reset(void *ctx, uint_fast32_t last_seq, uint_fast32_t code)
{
    assert(ctx == CTX);
    assert(last_seq == 0);
    remote_error = code;
    return 0;
}
