
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfsvfs_t ;
typedef scalar_t__ uint64_t ;
typedef int uid_t ;
typedef int longlong_t ;
typedef int boolean_t ;


 int ENOENT ;
 scalar_t__ FUID_ENCODE (int,int ) ;
 int SET_ERROR (int ) ;
 int sprintf (char*,char*,int ) ;
 int zfs_fuid_find_by_domain (int *,char const*,int *,int ) ;

__attribute__((used)) static int
id_to_fuidstr(zfsvfs_t *zfsvfs, const char *domain, uid_t rid,
    char *buf, boolean_t addok)
{
 uint64_t fuid;
 int domainid = 0;

 if (domain && domain[0]) {
  domainid = zfs_fuid_find_by_domain(zfsvfs, domain, ((void*)0), addok);
  if (domainid == -1)
   return (SET_ERROR(ENOENT));
 }
 fuid = FUID_ENCODE(domainid, rid);
 (void) sprintf(buf, "%llx", (longlong_t)fuid);
 return (0);
}
