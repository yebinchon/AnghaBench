
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ FUID_INDEX (scalar_t__) ;

__attribute__((used)) static int
zfs_replay_domain_cnt(uint64_t uid, uint64_t gid)
{
 uint64_t uid_idx;
 uint64_t gid_idx;
 int domcnt = 0;

 uid_idx = FUID_INDEX(uid);
 gid_idx = FUID_INDEX(gid);
 if (uid_idx)
  domcnt++;
 if (gid_idx > 0 && gid_idx != uid_idx)
  domcnt++;

 return (domcnt);
}
