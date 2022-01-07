
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;


 size_t fz_read (int *,int *,unsigned char*,size_t) ;
 int fz_seek (int *,int *,int,int ) ;
 int memcmp (unsigned char*,unsigned char const*,size_t) ;
 size_t nelem (unsigned char const*) ;

int
fz_is_tar_archive(fz_context *ctx, fz_stream *file)
{
 const unsigned char gnusignature[6] = { 'u', 's', 't', 'a', 'r', ' ' };
 const unsigned char paxsignature[6] = { 'u', 's', 't', 'a', 'r', '\0' };
 const unsigned char v7signature[6] = { '\0', '\0', '\0', '\0', '\0', '\0' };
 unsigned char data[6];
 size_t n;

 fz_seek(ctx, file, 257, 0);
 n = fz_read(ctx, file, data, nelem(data));
 if (n != nelem(data))
  return 0;
 if (!memcmp(data, gnusignature, nelem(gnusignature)))
  return 1;
 if (!memcmp(data, paxsignature, nelem(paxsignature)))
  return 1;
 if (!memcmp(data, v7signature, nelem(v7signature)))
  return 1;

 return 0;
}
