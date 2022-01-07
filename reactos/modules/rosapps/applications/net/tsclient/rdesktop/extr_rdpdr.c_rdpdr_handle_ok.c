
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* fileinfo; TYPE_1__* rdpdr_device; } ;
struct TYPE_6__ {int device_id; } ;
struct TYPE_5__ {int device_type; int handle; } ;
typedef TYPE_3__ RDPCLIENT ;
typedef int BOOL ;







 int False ;
 int True ;

__attribute__((used)) static BOOL
rdpdr_handle_ok(RDPCLIENT * This, int device, int handle)
{
 switch (This->rdpdr_device[device].device_type)
 {
  case 131:
  case 128:
  case 130:
  case 129:
   if (This->rdpdr_device[device].handle != handle)
    return False;
   break;
  case 132:
   if (This->fileinfo[handle].device_id != device)
    return False;
   break;
 }
 return True;
}
