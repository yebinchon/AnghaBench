
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_14__ {int x; int y; } ;
struct TYPE_13__ {int right; int left; int bottom; int top; } ;
struct TYPE_12__ {int iBitmapFormat; } ;
struct TYPE_11__ {TYPE_2__* SourceSurface; int DestSurface; int XlateSourceToDest; TYPE_7__ DestRect; TYPE_8__ SourcePoint; } ;
typedef TYPE_1__* PBLTINFO ;
typedef int LONG ;
typedef int BOOLEAN ;
 int BitsPerFormat (int) ;
 int DIB_16BPP_GetPixel (TYPE_2__*,int ,int ) ;
 int DIB_1BPP_BitBltSrcCopy_From1BPP (int ,TYPE_2__*,int ,TYPE_7__*,TYPE_8__*) ;
 int DIB_1BPP_PutPixel (int ,int ,int ,int ) ;
 int DIB_24BPP_GetPixel (TYPE_2__*,int ,int ) ;
 int DIB_32BPP_GetPixel (TYPE_2__*,int ,int ) ;
 int DIB_4BPP_GetPixel (TYPE_2__*,int ,int ) ;
 int DIB_8BPP_GetPixel (TYPE_2__*,int ,int ) ;
 int DbgPrint (char*,int ) ;
 int FALSE ;
 int TRUE ;
 int XLATEOBJ_iXlate (int ,int ) ;

BOOLEAN
DIB_1BPP_BitBltSrcCopy(PBLTINFO BltInfo)
{
  ULONG Color;
  LONG i, j, sx, sy = BltInfo->SourcePoint.y;

  switch ( BltInfo->SourceSurface->iBitmapFormat )
  {
  case 132:
    DIB_1BPP_BitBltSrcCopy_From1BPP ( BltInfo->DestSurface, BltInfo->SourceSurface, BltInfo->XlateSourceToDest, &BltInfo->DestRect, &BltInfo->SourcePoint );
    break;

  case 129:
    for (j=BltInfo->DestRect.top; j<BltInfo->DestRect.bottom; j++)
    {
      sx = BltInfo->SourcePoint.x;
      for (i=BltInfo->DestRect.left; i<BltInfo->DestRect.right; i++)
      {
        Color = XLATEOBJ_iXlate(BltInfo->XlateSourceToDest, DIB_4BPP_GetPixel(BltInfo->SourceSurface, sx, sy));
        DIB_1BPP_PutPixel(BltInfo->DestSurface, i, j, Color);
        sx++;
      }
      sy++;
    }
    break;

  case 128:
    for (j=BltInfo->DestRect.top; j<BltInfo->DestRect.bottom; j++)
    {
      sx = BltInfo->SourcePoint.x;
      for (i=BltInfo->DestRect.left; i<BltInfo->DestRect.right; i++)
      {
        Color = XLATEOBJ_iXlate(BltInfo->XlateSourceToDest, DIB_8BPP_GetPixel(BltInfo->SourceSurface, sx, sy));
        DIB_1BPP_PutPixel(BltInfo->DestSurface, i, j, Color);
        sx++;
      }
      sy++;
    }
    break;

  case 133:
    for (j=BltInfo->DestRect.top; j<BltInfo->DestRect.bottom; j++)
    {
      sx = BltInfo->SourcePoint.x;
      for (i=BltInfo->DestRect.left; i<BltInfo->DestRect.right; i++)
      {
        Color = XLATEOBJ_iXlate(BltInfo->XlateSourceToDest, DIB_16BPP_GetPixel(BltInfo->SourceSurface, sx, sy));
        DIB_1BPP_PutPixel(BltInfo->DestSurface, i, j, Color);
        sx++;
      }
      sy++;
    }
    break;

  case 131:
    for (j=BltInfo->DestRect.top; j<BltInfo->DestRect.bottom; j++)
    {
      sx = BltInfo->SourcePoint.x;
      for (i=BltInfo->DestRect.left; i<BltInfo->DestRect.right; i++)
      {
        Color = XLATEOBJ_iXlate(BltInfo->XlateSourceToDest, DIB_24BPP_GetPixel(BltInfo->SourceSurface, sx, sy));
        DIB_1BPP_PutPixel(BltInfo->DestSurface, i, j, Color);
        sx++;
      }
      sy++;
    }
    break;

  case 130:
    for (j=BltInfo->DestRect.top; j<BltInfo->DestRect.bottom; j++)
    {
      sx = BltInfo->SourcePoint.x;
      for (i=BltInfo->DestRect.left; i<BltInfo->DestRect.right; i++)
      {
        Color = XLATEOBJ_iXlate(BltInfo->XlateSourceToDest, DIB_32BPP_GetPixel(BltInfo->SourceSurface, sx, sy));
        DIB_1BPP_PutPixel(BltInfo->DestSurface, i, j, Color);
        sx++;
      }
      sy++;
    }
    break;

  default:
    DbgPrint("DIB_1BPP_BitBlt: Unhandled Source BPP: %u\n", BitsPerFormat(BltInfo->SourceSurface->iBitmapFormat));
    return FALSE;
  }

  return TRUE;
}
