
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ u_joliet_level; } ;
typedef TYPE_1__ iso9660_t ;
typedef char cdio_utf8_t ;


 char* calloc (size_t,int) ;
 scalar_t__ cdio_charset_to_utf8 (char*,size_t,char**,char*) ;
 int cdio_warn (char*) ;
 int free (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static inline bool
get_member_id(iso9660_t *p_iso, cdio_utf8_t **p_psz_member_id,
              char* pvd_member, char* svd_member, size_t max_size)
{
  int j;
  bool strip;

  if (!p_iso) {
    *p_psz_member_id = ((void*)0);
    return 0;
  }
  *p_psz_member_id = calloc(max_size+1, sizeof(cdio_utf8_t));
  if (!*p_psz_member_id) {
    cdio_warn("Memory allocation error");
    return 0;
  }

  (*p_psz_member_id)[max_size] = 0;
  for (strip=1, j=max_size-1; j>=0; j--) {
    if (strip && (pvd_member[j] == ' '))
      continue;
    strip = 0;
    (*p_psz_member_id)[j] = pvd_member[j];
  }
  if (strlen(*p_psz_member_id) == 0) {
    free(*p_psz_member_id);
    *p_psz_member_id = ((void*)0);
    return 0;
  }
  return 1;
}
