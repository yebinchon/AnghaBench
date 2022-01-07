
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_fast64_t ;


 void* CTX ;
 scalar_t__ PING_VALUE ;
 int assert (int) ;
 int pings ;

__attribute__((used)) static int vlc_h2_ping(void *ctx, uint_fast64_t opaque)
{
    assert(ctx == CTX);
    assert(opaque == PING_VALUE);
    pings++;
    return 0;
}
