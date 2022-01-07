
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {void (* process ) (TYPE_1__*,STREAM) ;int flags; int name; scalar_t__ mcs_id; } ;
typedef TYPE_2__ VCHANNEL ;
struct TYPE_7__ {size_t num_channels; TYPE_2__* channels; int use_rdp5; } ;
typedef TYPE_1__ RDPCLIENT ;


 size_t MAX_CHANNELS ;
 scalar_t__ MCS_GLOBAL_CHANNEL ;
 int error (char*) ;
 int strncpy (int ,char*,int) ;

VCHANNEL *
channel_register(RDPCLIENT * This, char *name, uint32 flags, void (*callback) (RDPCLIENT *, STREAM))
{
 VCHANNEL *channel;

 if (!This->use_rdp5)
  return ((void*)0);

 if (This->num_channels >= MAX_CHANNELS)
 {
  error("Channel table full, increase MAX_CHANNELS\n");
  return ((void*)0);
 }

 channel = &This->channels[This->num_channels];
 channel->mcs_id = MCS_GLOBAL_CHANNEL + 1 + This->num_channels;
 strncpy(channel->name, name, 8);
 channel->flags = flags;
 channel->process = callback;
 This->num_channels++;
 return channel;
}
