
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long* zc_word; } ;
typedef TYPE_1__ zio_cksum_t ;
typedef unsigned long long uLongf ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int KM_SLEEP ;
 int TEXT_DOMAIN ;
 unsigned int ZFS_SEND_RESUME_TOKEN_VERSION ;
 scalar_t__ Z_OK ;
 int dgettext (int ,char*) ;
 int fletcher_4_native_varsize (unsigned char*,int,TYPE_1__*) ;
 int free (unsigned char*) ;
 int nvlist_unpack (void*,unsigned long long,int **,int ) ;
 int sscanf (char const*,char*,...) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 scalar_t__ uncompress (void*,unsigned long long*,unsigned char*,int) ;
 void* zfs_alloc (int *,unsigned long long) ;
 int zfs_error_aux (int *,int ,...) ;

nvlist_t *
zfs_send_resume_token_to_nvlist(libzfs_handle_t *hdl, const char *token)
{
 unsigned int version;
 int nread, i;
 unsigned long long checksum, packed_len;






 nread = sscanf(token, "%u-%llx-%llx-",
     &version, &checksum, &packed_len);
 if (nread != 3) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "resume token is corrupt (invalid format)"));
  return (((void*)0));
 }

 if (version != ZFS_SEND_RESUME_TOKEN_VERSION) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "resume token is corrupt (invalid version %u)"),
      version);
  return (((void*)0));
 }


 token = strrchr(token, '-') + 1;
 int len = strlen(token) / 2;
 unsigned char *compressed = zfs_alloc(hdl, len);
 for (i = 0; i < len; i++) {
  nread = sscanf(token + i * 2, "%2hhx", compressed + i);
  if (nread != 1) {
   free(compressed);
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "resume token is corrupt "
       "(payload is not hex-encoded)"));
   return (((void*)0));
  }
 }


 zio_cksum_t cksum;
 fletcher_4_native_varsize(compressed, len, &cksum);
 if (cksum.zc_word[0] != checksum) {
  free(compressed);
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "resume token is corrupt (incorrect checksum)"));
  return (((void*)0));
 }


 void *packed = zfs_alloc(hdl, packed_len);
 uLongf packed_len_long = packed_len;
 if (uncompress(packed, &packed_len_long, compressed, len) != Z_OK ||
     packed_len_long != packed_len) {
  free(packed);
  free(compressed);
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "resume token is corrupt (decompression failed)"));
  return (((void*)0));
 }


 nvlist_t *nv;
 int error = nvlist_unpack(packed, packed_len, &nv, KM_SLEEP);
 free(packed);
 free(compressed);
 if (error != 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "resume token is corrupt (nvlist_unpack failed)"));
  return (((void*)0));
 }
 return (nv);
}
