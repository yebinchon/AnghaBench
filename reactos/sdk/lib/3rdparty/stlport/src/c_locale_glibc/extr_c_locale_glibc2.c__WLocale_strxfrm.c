
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
struct _Locale_collate {int dummy; } ;
typedef int locale_t ;


 int free (scalar_t__*) ;
 scalar_t__* malloc (size_t) ;
 int wcsncpy (scalar_t__*,scalar_t__ const*,size_t) ;
 size_t wcsxfrm_l (scalar_t__*,scalar_t__ const*,size_t,int ) ;

size_t _WLocale_strxfrm( struct _Locale_collate *__loc,
                        wchar_t *dest, size_t dest_n,
                        const wchar_t *src, size_t src_n )
{
  const wchar_t *real_src;
  wchar_t *buf = ((void*)0);
  size_t result;

  if (src_n == 0)
  {
    if (dest != ((void*)0)) dest[0] = 0;
    return 0;
  }
  if (src[src_n] != 0) {
    buf = malloc((src_n + 1) * sizeof(wchar_t));
    wcsncpy(buf, src, src_n);
    buf[src_n] = 0;
    real_src = buf;
  }
  else
    real_src = src;
  result = wcsxfrm_l(dest, real_src, dest_n, (locale_t)__loc);
  if (buf != ((void*)0)) free(buf);
  return result;
}
