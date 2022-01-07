
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;


 int aout_RequestRestart (int *,unsigned int) ;

__attribute__((used)) static void aout_RestartNotify (audio_output_t *aout, unsigned mode)
{
    aout_RequestRestart (aout, mode);
}
