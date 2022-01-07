
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
struct TYPE_4__ {scalar_t__* colmap; } ;
struct TYPE_5__ {TYPE_1__ xwin; } ;
typedef TYPE_2__ RDPCLIENT ;



__attribute__((used)) static void
translate8to8(RDPCLIENT * This, const uint8 * data, uint8 * out, uint8 * end)
{
 while (out < end)
  *(out++) = (uint8) This->xwin.colmap[*(data++)];
}
