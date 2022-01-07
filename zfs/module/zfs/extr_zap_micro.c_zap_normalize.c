
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_t ;


 int ASSERT (int) ;
 int U8_TEXTPREP_IGNORE_INVALID ;
 int U8_TEXTPREP_IGNORE_NULL ;
 int U8_UNICODE_LATEST ;
 int ZAP_FLAG_UINT64_KEY ;
 size_t ZAP_MAXNAMELEN ;
 int strlen (char const*) ;
 int u8_textprep_str (char*,size_t*,char*,size_t*,int,int ,int*) ;
 int zap_getflags (int *) ;

__attribute__((used)) static int
zap_normalize(zap_t *zap, const char *name, char *namenorm, int normflags)
{
 ASSERT(!(zap_getflags(zap) & ZAP_FLAG_UINT64_KEY));

 size_t inlen = strlen(name) + 1;
 size_t outlen = ZAP_MAXNAMELEN;

 int err = 0;
 (void) u8_textprep_str((char *)name, &inlen, namenorm, &outlen,
     normflags | U8_TEXTPREP_IGNORE_NULL | U8_TEXTPREP_IGNORE_INVALID,
     U8_UNICODE_LATEST, &err);

 return (err);
}
