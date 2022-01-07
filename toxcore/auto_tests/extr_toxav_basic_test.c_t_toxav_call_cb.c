
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ToxAV ;
struct TYPE_2__ {int incoming; } ;
typedef TYPE_1__ CallControl ;


 int printf (char*) ;

void t_toxav_call_cb(ToxAV *av, uint32_t friend_number, bool audio_enabled, bool video_enabled, void *user_data)
{
    (void) av;
    (void) friend_number;
    (void) audio_enabled;
    (void) video_enabled;

    printf("Handling CALL callback\n");
    ((CallControl *)user_data)->incoming = 1;
}
