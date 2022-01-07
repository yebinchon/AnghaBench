
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef scalar_t__ NTHANDLE ;


 int RDPDR_MAX_DEVICES ;

int
get_device_index(RDPCLIENT * This, NTHANDLE handle)
{
 int i;
 for (i = 0; i < RDPDR_MAX_DEVICES; i++)
 {
  if (This->rdpdr_device[i].handle == handle)
   return i;
 }
 return -1;
}
