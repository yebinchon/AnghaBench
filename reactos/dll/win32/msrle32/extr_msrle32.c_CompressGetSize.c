
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int * LPCBITMAPINFOHEADER ;
typedef int CodecInfo ;


 scalar_t__ CompressQuery (int *,int *,int *) ;
 scalar_t__ ICERR_OK ;
 int MSRLE32_GetMaxCompressedSize (int *) ;
 int TRACE (char*,int *,int *,int *) ;
 int assert (int ) ;

__attribute__((used)) static LRESULT CompressGetSize(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
          LPCBITMAPINFOHEADER lpbiOut)
{

  assert(pi != ((void*)0));

  TRACE("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);


  if (lpbiIn == ((void*)0) && lpbiOut == ((void*)0))
    return 0;

  if (CompressQuery(pi, lpbiIn, lpbiOut) != ICERR_OK)
    return 0;


  if (lpbiIn)
    return MSRLE32_GetMaxCompressedSize(lpbiIn);
  else
    return MSRLE32_GetMaxCompressedSize(lpbiOut);
}
