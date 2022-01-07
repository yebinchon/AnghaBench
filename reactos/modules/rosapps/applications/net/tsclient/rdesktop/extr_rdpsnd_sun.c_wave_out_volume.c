
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16 ;
typedef int uint ;
struct TYPE_6__ {int gain; int balance; } ;
struct TYPE_7__ {TYPE_1__ play; } ;
typedef TYPE_2__ audio_info_t ;
struct TYPE_8__ {int dsp_; } ;


 int AUDIO_INITINFO (TYPE_2__*) ;
 int AUDIO_MAX_GAIN ;
 int AUDIO_MID_BALANCE ;
 int AUDIO_SETINFO ;
 TYPE_4__* This ;
 int ioctl (int ,int ,TYPE_2__*) ;
 int perror (char*) ;

void
wave_out_volume(uint16 left, uint16 right)
{
 audio_info_t info;
 uint balance;
 uint volume;

 AUDIO_INITINFO(&info);

 volume = (left > right) ? left : right;

 if (volume / AUDIO_MID_BALANCE != 0)
 {
  balance =
   AUDIO_MID_BALANCE - (left / (volume / AUDIO_MID_BALANCE)) +
   (right / (volume / AUDIO_MID_BALANCE));
 }
 else
 {
  balance = AUDIO_MID_BALANCE;
 }

 info.play.gain = volume / (65536 / AUDIO_MAX_GAIN);
 info.play.balance = balance;

 if (ioctl(This->dsp_, AUDIO_SETINFO, &info) == -1)
 {
  perror("AUDIO_SETINFO");
  return;
 }
}
