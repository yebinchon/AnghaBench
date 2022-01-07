
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dble; } ;
typedef int ME_Context ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FIXME (char*,int) ;
 int ME_GetBorderPenWidth (int const*,int) ;
 TYPE_1__* border_details ;

int ME_GetParaBorderWidth(const ME_Context* c, int flags)
{
  int idx = (flags >> 8) & 0xF;
  int width;

  if (idx >= ARRAY_SIZE(border_details))
  {
      FIXME("Unsupported border value %d\n", idx);
      return 0;
  }
  width = ME_GetBorderPenWidth(c, idx);
  if (border_details[idx].dble) width = width * 2 + 1;
  return width;
}
