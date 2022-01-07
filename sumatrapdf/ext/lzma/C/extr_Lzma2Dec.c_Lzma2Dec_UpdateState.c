
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_7__ {int pb; int lc; int lp; } ;
struct TYPE_8__ {int dicPos; TYPE_1__ prop; } ;
struct TYPE_9__ {int state; int control; int unpackSize; int packSize; int needInitProp; TYPE_2__ decoder; } ;
typedef int ELzma2State ;
typedef TYPE_3__ CLzma2Dec ;
typedef int Byte ;


 int False ;
 int LZMA2_GET_LZMA_MODE (TYPE_3__*) ;
 int LZMA2_IS_THERE_PROP (int ) ;
 int LZMA2_IS_UNCOMPRESSED_STATE (TYPE_3__*) ;
 int LZMA2_LCLP_MAX ;

 int LZMA2_STATE_DATA ;
 int LZMA2_STATE_ERROR ;
 int LZMA2_STATE_FINISHED ;





 int PRF (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static ELzma2State Lzma2Dec_UpdateState(CLzma2Dec *p, Byte b)
{
  switch(p->state)
  {
    case 133:
      p->control = b;
      PRF(printf("\n %4X ", p->decoder.dicPos));
      PRF(printf(" %2X", b));
      if (p->control == 0)
        return LZMA2_STATE_FINISHED;
      if (LZMA2_IS_UNCOMPRESSED_STATE(p))
      {
        if ((p->control & 0x7F) > 2)
          return LZMA2_STATE_ERROR;
        p->unpackSize = 0;
      }
      else
        p->unpackSize = (UInt32)(p->control & 0x1F) << 16;
      return 129;

    case 129:
      p->unpackSize |= (UInt32)b << 8;
      return 128;

    case 128:
      p->unpackSize |= (UInt32)b;
      p->unpackSize++;
      PRF(printf(" %8d", p->unpackSize));
      return (LZMA2_IS_UNCOMPRESSED_STATE(p)) ? LZMA2_STATE_DATA : 132;

    case 132:
      p->packSize = (UInt32)b << 8;
      return 131;

    case 131:
      p->packSize |= (UInt32)b;
      p->packSize++;
      PRF(printf(" %8d", p->packSize));
      return LZMA2_IS_THERE_PROP(LZMA2_GET_LZMA_MODE(p)) ? 130:
        (p->needInitProp ? LZMA2_STATE_ERROR : LZMA2_STATE_DATA);

    case 130:
    {
      int lc, lp;
      if (b >= (9 * 5 * 5))
        return LZMA2_STATE_ERROR;
      lc = b % 9;
      b /= 9;
      p->decoder.prop.pb = b / 5;
      lp = b % 5;
      if (lc + lp > LZMA2_LCLP_MAX)
        return LZMA2_STATE_ERROR;
      p->decoder.prop.lc = lc;
      p->decoder.prop.lp = lp;
      p->needInitProp = False;
      return LZMA2_STATE_DATA;
    }
  }
  return LZMA2_STATE_ERROR;
}
