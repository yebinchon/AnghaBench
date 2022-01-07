
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int lba_t ;


 unsigned int CDIO_CD_FRAMES_PER_SEC ;
 unsigned int CDIO_CD_SECS_PER_MIN ;

lba_t
cdio_msf3_to_lba (unsigned int minutes, unsigned int seconds,
                  unsigned int frames)
{
  return ((minutes * CDIO_CD_SECS_PER_MIN + seconds) * CDIO_CD_FRAMES_PER_SEC
   + frames);
}
