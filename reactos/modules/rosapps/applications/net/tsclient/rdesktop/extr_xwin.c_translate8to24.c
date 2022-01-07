
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_4__ {int * colmap; scalar_t__ compatible_arch; } ;
struct TYPE_5__ {TYPE_1__ xwin; } ;
typedef TYPE_2__ RDPCLIENT ;


 int BOUT24 (int *,int ) ;
 int LOUT24 (int *,int ) ;

__attribute__((used)) static void
translate8to24(RDPCLIENT * This, const uint8 * data, uint8 * out, uint8 * end)
{
 uint32 value;

 if (This->xwin.compatible_arch)
 {
  while (out < end)
  {
   value = This->xwin.colmap[*(data++)];
   BOUT24(out, value);
  }
 }
 else
 {
  while (out < end)
  {
   value = This->xwin.colmap[*(data++)];
   LOUT24(out, value);
  }
 }
}
