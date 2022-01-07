
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int XLATEOBJ ;
struct TYPE_10__ {int x; int y; } ;
struct TYPE_9__ {int left; int right; int top; int bottom; } ;
struct TYPE_8__ {int lDelta; scalar_t__ pvScan0; } ;
typedef TYPE_1__ SURFOBJ ;
typedef TYPE_2__* PRECTL ;
typedef TYPE_3__ POINTL ;
typedef int* PBYTE ;
typedef int BYTE ;


 scalar_t__ XLATEOBJ_iXlate (int *,int ) ;

__attribute__((used)) static
void
DIB_1BPP_BitBltSrcCopy_From1BPP (
                                 SURFOBJ* DestSurf,
                                 SURFOBJ* SourceSurf,
                                 XLATEOBJ* pxlo,
                                 PRECTL DestRect,
                                 POINTL *SourcePoint )
{



  int dwx, dwx2;
  int swx;


  int dl = DestRect->left;
  int dr = DestRect->right-1;
  int sl = SourcePoint->x;
  int sr = sl + dr - dl;


  int xinc;
  int yinc;
  int ySrcDelta, yDstDelta;


  int dy;
  int dy1;
  int dy2;
  int sy1;

  int shift;
  BYTE srcmask, dstmask, xormask;



  PBYTE d, pd;
  PBYTE s, ps;

  shift = (dl-sl)&7;

  xormask = 0xFF * (BYTE)XLATEOBJ_iXlate(pxlo, 0);

  if ( DestRect->top <= SourcePoint->y )
  {

    dy1 = DestRect->top;
    dy2 = DestRect->bottom - 1;
    sy1 = SourcePoint->y;
    yinc = 1;
    ySrcDelta = SourceSurf->lDelta;
    yDstDelta = DestSurf->lDelta;
  }
  else
  {

    dy1 = DestRect->bottom - 1;
    dy2 = DestRect->top;
    sy1 = SourcePoint->y + dy1 - dy2;
    yinc = -1;
    ySrcDelta = -SourceSurf->lDelta;
    yDstDelta = -DestSurf->lDelta;
  }
  if ( DestRect->left <= SourcePoint->x )
  {

    dwx = dl&~7;
    swx = (sl-(dl&7))&~7;
    dwx2 = dr&~7;
    xinc = 1;
  }
  else
  {

    dwx = dr & ~7;
    swx = (sr - (dr & 7)) & ~7;
    dwx2 = dl & ~7;
    xinc = -1;
  }
  d = &(((PBYTE)DestSurf->pvScan0)[dy1*DestSurf->lDelta + (dwx>>3)]);
  s = &(((PBYTE)SourceSurf->pvScan0)[sy1*SourceSurf->lDelta + (swx>>3)]);
  for ( ;; )
  {
    dy = dy1;
    pd = d;
    ps = s;
    srcmask = 0xff;
    if ( dwx < dl )
    {
      int diff = dl-dwx;
      srcmask &= (1<<(8-diff))-1;
    }
    if ( dwx+7 > dr )
    {
      int diff = dr-dwx+1;
      srcmask &= ~((1<<(8-diff))-1);
    }
    dstmask = ~srcmask;




    if ( !shift )
    {
      for ( ;; )
      {
        *pd = (BYTE)((*pd & dstmask) | ((ps[0]^xormask) & srcmask));


        if ( dy == dy2 )
          break;
        dy += yinc;
        pd += yDstDelta;
        ps += ySrcDelta;
      }
    }
    else if ( !(0xFF00 & (srcmask<<shift) ) )
    {
      for ( ;; )
      {
        *pd = (BYTE)((*pd & dstmask)
          | ( ( (ps[1]^xormask) >> shift ) & srcmask ));


        if ( dy == dy2 )
          break;
        dy += yinc;
        pd += yDstDelta;
        ps += ySrcDelta;
      }
    }
    else if ( !(0xFF & (srcmask<<shift) ) )
    {
      for ( ;; )
      {
        *pd = (*pd & dstmask)
          | ( ( (ps[0]^xormask) << ( 8 - shift ) ) & srcmask );


        if ( dy == dy2 )
          break;
        dy += yinc;
        pd += yDstDelta;
        ps += ySrcDelta;
      }
    }
    else
    {
      for ( ;; )
      {
        *pd = (*pd & dstmask)
          | ( ( ( ((ps[1]^xormask))|((ps[0]^xormask)<<8) ) >> shift ) & srcmask );


        if ( dy == dy2 )
          break;
        dy += yinc;
        pd += yDstDelta;
        ps += ySrcDelta;
      }
    }


    if ( dwx == dwx2 )
      break;
    d += xinc;
    s += xinc;
    dwx += xinc<<3;
    swx += xinc<<3;
  }
}
