
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int channel; } ;
struct TYPE_10__ {TYPE_1__ rdpsnd; } ;
struct TYPE_9__ {scalar_t__ channel_hdr; scalar_t__ end; } ;
typedef TYPE_2__* STREAM ;
typedef TYPE_3__ RDPCLIENT ;


 int channel_send (TYPE_3__*,TYPE_2__*,int ) ;
 int hexdump (scalar_t__,scalar_t__) ;
 int printf (char*) ;

__attribute__((used)) static void
rdpsnd_send(RDPCLIENT * This, STREAM s)
{





 channel_send(This, s, This->rdpsnd.channel);
}
