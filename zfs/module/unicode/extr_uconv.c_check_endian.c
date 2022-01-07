
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int UCONV_IN_ENDIAN_MASKS ;
 int UCONV_IN_NAT_ENDIAN ;
 int UCONV_OUT_ENDIAN_MASKS ;
 int UCONV_OUT_NAT_ENDIAN ;

__attribute__((used)) static int
check_endian(int flag, int *in, int *out)
{
 *in = flag & UCONV_IN_ENDIAN_MASKS;


 if (*in == UCONV_IN_ENDIAN_MASKS)
  return (EBADF);

 if (*in == 0)
  *in = UCONV_IN_NAT_ENDIAN;

 *out = flag & UCONV_OUT_ENDIAN_MASKS;


 if (*out == UCONV_OUT_ENDIAN_MASKS)
  return (EBADF);

 if (*out == 0)
  *out = UCONV_OUT_NAT_ENDIAN;

 return (0);
}
