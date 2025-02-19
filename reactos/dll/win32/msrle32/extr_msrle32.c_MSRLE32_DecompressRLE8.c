
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* palette_map; } ;
struct TYPE_6__ {scalar_t__ biCompression; int biBitCount; int biWidth; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef scalar_t__* LPBYTE ;
typedef TYPE_2__ CodecInfo ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 scalar_t__ BI_RGB ;
 int DIBWIDTHBYTES (TYPE_1__) ;
 int FALSE ;
 int ICERR_ERROR ;
 int ICERR_OK ;
 int TRUE ;
 int WARN (char*,int,int,int,scalar_t__,int) ;
 int assert (int) ;

__attribute__((used)) static LRESULT MSRLE32_DecompressRLE8(const CodecInfo *pi, LPCBITMAPINFOHEADER lpbi,
          const BYTE *lpIn, LPBYTE lpOut)
{
  int bytes_per_pixel;
  int line_size;
  int pixel_ptr = 0;
  BOOL bEndFlag = FALSE;

  assert(pi != ((void*)0));
  assert(lpbi != ((void*)0) && lpbi->biCompression == BI_RGB);
  assert(lpIn != ((void*)0) && lpOut != ((void*)0));

  bytes_per_pixel = (lpbi->biBitCount + 1) / 8;
  line_size = DIBWIDTHBYTES(*lpbi);

  do {
    BYTE code0, code1;

    code0 = *lpIn++;
    code1 = *lpIn++;

    if (code0 == 0) {
      int extra_byte;

      switch (code1) {
      case 0:
 pixel_ptr = 0;
 lpOut += line_size;
 break;
      case 1:
 bEndFlag = TRUE;
 break;
      case 2:
 pixel_ptr += *lpIn++ * bytes_per_pixel;
 lpOut += *lpIn++ * line_size;
 if (pixel_ptr >= lpbi->biWidth * bytes_per_pixel) {
   pixel_ptr = 0;
   lpOut += line_size;
 }
 break;
      default:
 if (pixel_ptr/bytes_per_pixel + code1 > lpbi->biWidth) {
          WARN("aborted absolute: (%d=%d/%d+%d) > %d\n",pixel_ptr/bytes_per_pixel + code1,pixel_ptr,bytes_per_pixel,code1,lpbi->biWidth);
   return ICERR_ERROR;
 }
 extra_byte = code1 & 0x01;

 code0 = code1;
 while (code0--) {
   code1 = *lpIn++;
   if (bytes_per_pixel == 1) {
     lpOut[pixel_ptr] = pi->palette_map[code1];
   } else if (bytes_per_pixel == 2) {
     lpOut[pixel_ptr + 0] = pi->palette_map[code1 * 2 + 0];
     lpOut[pixel_ptr + 1] = pi->palette_map[code1 * 2 + 1];
   } else {
     lpOut[pixel_ptr + 0] = pi->palette_map[code1 * 4 + 0];
     lpOut[pixel_ptr + 1] = pi->palette_map[code1 * 4 + 1];
     lpOut[pixel_ptr + 2] = pi->palette_map[code1 * 4 + 2];
   }
   pixel_ptr += bytes_per_pixel;
 }


 if (extra_byte)
   lpIn++;
      };
    } else {

      if (pixel_ptr/bytes_per_pixel + code0 > lpbi->biWidth) {
 WARN("aborted coded: (%d=%d/%d+%d) > %d\n",pixel_ptr/bytes_per_pixel + code1,pixel_ptr,bytes_per_pixel,code1,lpbi->biWidth);
 return ICERR_ERROR;
      }

      if (bytes_per_pixel == 1) {
 code1 = pi->palette_map[code1];
 while (code0--)
   lpOut[pixel_ptr++] = code1;
      } else if (bytes_per_pixel == 2) {
 BYTE hi = pi->palette_map[code1 * 2 + 0];
 BYTE lo = pi->palette_map[code1 * 2 + 1];

 while (code0--) {
   lpOut[pixel_ptr + 0] = hi;
   lpOut[pixel_ptr + 1] = lo;
   pixel_ptr += bytes_per_pixel;
 }
      } else {
 BYTE r = pi->palette_map[code1 * 4 + 2];
 BYTE g = pi->palette_map[code1 * 4 + 1];
 BYTE b = pi->palette_map[code1 * 4 + 0];

 while (code0--) {
   lpOut[pixel_ptr + 0] = b;
   lpOut[pixel_ptr + 1] = g;
   lpOut[pixel_ptr + 2] = r;
   pixel_ptr += bytes_per_pixel;
 }
      }
    }
  } while (! bEndFlag);

  return ICERR_OK;
}
