
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CTX ;
 int assert (int) ;
 int settings_acked ;

__attribute__((used)) static int vlc_h2_settings_done(void *ctx)
{
    assert(ctx == CTX);
    settings_acked++;
    (void) ctx;
    return 0;
}
