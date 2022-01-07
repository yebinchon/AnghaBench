
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;
typedef enum strncpy_pad_check { ____Placeholder_strncpy_pad_check } strncpy_pad_check ;






 int cdio_assert (int) ;
 int cdio_assert_not_reached () ;
 int cdio_warn (char*,char const*,unsigned int) ;
 int iso9660_is_achar (char const) ;
 int iso9660_is_dchar (char const) ;
 int memset (char*,char,size_t) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

char *
iso9660_strncpy_pad(char dst[], const char src[], size_t len,
                    enum strncpy_pad_check _check)
{
  size_t rlen;

  cdio_assert (dst != ((void*)0));
  cdio_assert (src != ((void*)0));
  cdio_assert (len > 0);

  switch (_check)
    {
      int idx;
    case 128:
      break;

    case 131:
      for (idx = 0; src[idx]; idx++)
        if ((int8_t) src[idx] < 0)
          {
            cdio_warn ("string '%s' fails 7bit constraint (pos = %d)",
                      src, idx);
            break;
          }
      break;

    case 130:
      for (idx = 0; src[idx]; idx++)
        if (!iso9660_is_achar (src[idx]))
          {
            cdio_warn ("string '%s' fails a-character constraint (pos = %d)",
                      src, idx);
            break;
          }
      break;

    case 129:
      for (idx = 0; src[idx]; idx++)
        if (!iso9660_is_dchar (src[idx]))
          {
            cdio_warn ("string '%s' fails d-character constraint (pos = %d)",
                      src, idx);
            break;
          }
      break;

    default:
      cdio_assert_not_reached ();
      break;
    }

  rlen = strlen (src);

  if (rlen > len)
    cdio_warn ("string '%s' is getting truncated to %d characters",
              src, (unsigned int) len);

  strncpy (dst, src, len);
  if (rlen < len)
    memset(dst+rlen, ' ', len-rlen);
  return dst;
}
