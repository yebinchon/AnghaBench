
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef scalar_t__ uint16 ;
struct TYPE_12__ {int size; int * data; int * p; int * end; } ;
struct TYPE_11__ {scalar_t__ mcs_id; int (* process ) (TYPE_3__*,TYPE_2__*) ;TYPE_2__ in; } ;
typedef TYPE_1__ VCHANNEL ;
struct TYPE_13__ {unsigned int num_channels; TYPE_1__* channels; } ;
typedef TYPE_2__* STREAM ;
typedef TYPE_3__ RDPCLIENT ;


 int CHANNEL_FLAG_FIRST ;
 int CHANNEL_FLAG_LAST ;
 int MIN (int *,int) ;
 int in_uint32_le (TYPE_2__*,int) ;
 int memcpy (int *,int *,int) ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;
 int stub2 (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ xrealloc (int *,int) ;

void
channel_process(RDPCLIENT * This, STREAM s, uint16 mcs_channel)
{
 uint32 length, flags;
 uint32 thislength;
 VCHANNEL *channel = ((void*)0);
 unsigned int i;
 STREAM in;

 for (i = 0; i < This->num_channels; i++)
 {
  channel = &This->channels[i];
  if (channel->mcs_id == mcs_channel)
   break;
 }

 if (i >= This->num_channels)
  return;

 in_uint32_le(s, length);
 in_uint32_le(s, flags);
 if ((flags & CHANNEL_FLAG_FIRST) && (flags & CHANNEL_FLAG_LAST))
 {

  channel->process(This, s);
 }
 else
 {

  in = &channel->in;
  if (flags & CHANNEL_FLAG_FIRST)
  {
   if (length > in->size)
   {
    in->data = (uint8 *) xrealloc(in->data, length);
    in->size = length;
   }
   in->p = in->data;
  }

  thislength = MIN(s->end - s->p, in->data + in->size - in->p);
  memcpy(in->p, s->p, thislength);
  in->p += thislength;

  if (flags & CHANNEL_FLAG_LAST)
  {
   in->end = in->p;
   in->p = in->data;
   channel->process(This, in);
  }
 }
}
