
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_2__ {int ip; int methodId; unsigned int delta; } ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef TYPE_1__ CBraState ;
typedef scalar_t__ Byte ;


 int GetUi32 (scalar_t__ const*) ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;


 int XZ_ID_Delta ;




SRes BraState_SetProps(void *pp, const Byte *props, size_t propSize, ISzAlloc *alloc)
{
  CBraState *p = ((CBraState *)pp);
  alloc = alloc;
  p->ip = 0;
  if (p->methodId == XZ_ID_Delta)
  {
    if (propSize != 1)
      return SZ_ERROR_UNSUPPORTED;
    p->delta = (unsigned)props[0] + 1;
  }
  else
  {
    if (propSize == 4)
    {
      UInt32 v = GetUi32(props);
      switch(p->methodId)
      {
        case 129:
        case 132:
        case 128:
          if ((v & 3) != 0)
            return SZ_ERROR_UNSUPPORTED;
          break;
        case 131:
          if ((v & 1) != 0)
            return SZ_ERROR_UNSUPPORTED;
          break;
        case 130:
          if ((v & 0xF) != 0)
            return SZ_ERROR_UNSUPPORTED;
          break;
      }
      p->ip = v;
    }
    else if (propSize != 0)
      return SZ_ERROR_UNSUPPORTED;
  }
  return SZ_OK;
}
