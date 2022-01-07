
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfsvfs_t ;
typedef int uint64_t ;
typedef int uid_t ;


 int FUID_INDEX (int ) ;
 int FUID_RID (int ) ;
 int strlcpy (char*,char const*,int) ;
 char* zfs_fuid_find_by_idx (int *,int ) ;
 int zfs_strtonum (char const*,int *) ;

__attribute__((used)) static void
fuidstr_to_sid(zfsvfs_t *zfsvfs, const char *fuidstr,
    char *domainbuf, int buflen, uid_t *ridp)
{
 uint64_t fuid;
 const char *domain;

 fuid = zfs_strtonum(fuidstr, ((void*)0));

 domain = zfs_fuid_find_by_idx(zfsvfs, FUID_INDEX(fuid));
 if (domain)
  (void) strlcpy(domainbuf, domain, buflen);
 else
  domainbuf[0] = '\0';
 *ridp = FUID_RID(fuid);
}
