
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int HDR_BITRATE_VAL (unsigned long) ;
 int HDR_LAYER_VAL (unsigned long) ;
 int HDR_SAMPLERATE_VAL (unsigned long) ;
 unsigned long HDR_SYNC ;
 int TRUE ;

__attribute__((used)) static int head_check(unsigned long head)
{
 if
 (
  ((head & HDR_SYNC) != HDR_SYNC)
  ||

  (!(HDR_LAYER_VAL(head)))
  ||

  (HDR_BITRATE_VAL(head) == 0xf)
  ||

  (HDR_SAMPLERATE_VAL(head) == 0x3)

 )
 {
  return FALSE;
 }

 else
 {
  return TRUE;
 }
}
