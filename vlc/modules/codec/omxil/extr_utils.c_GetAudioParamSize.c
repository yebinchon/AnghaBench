
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ encoding; scalar_t__ index; unsigned int size; } ;
typedef scalar_t__ OMX_INDEXTYPE ;


 scalar_t__ OMX_AUDIO_CodingUnused ;
 TYPE_1__* audio_encoding_param ;

unsigned int GetAudioParamSize(OMX_INDEXTYPE index)
{
  int i;

  for(i = 0; audio_encoding_param[i].encoding != OMX_AUDIO_CodingUnused &&
      audio_encoding_param[i].index != index; i++);

  return audio_encoding_param[i].size;
}
