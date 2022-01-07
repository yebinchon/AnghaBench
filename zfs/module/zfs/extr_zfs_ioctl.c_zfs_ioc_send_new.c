
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int offset_t ;
typedef int nvlist_t ;
struct TYPE_5__ {int f_offset; int f_vnode; } ;
typedef TYPE_1__ file_t ;
struct TYPE_6__ {int dso_dryrun; int dso_arg; int dso_outfunc; int member_0; } ;
typedef TYPE_2__ dmu_send_outparams_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int EBADF ;
 int SET_ERROR (int ) ;
 scalar_t__ VOP_SEEK (int ,int ,int *,int *) ;
 int dmu_send (char const*,char*,int ,int ,int ,int ,int ,int ,char*,int,int *,TYPE_2__*) ;
 int dump_bytes ;
 int fnvlist_lookup_int32 (int *,char*) ;
 TYPE_1__* getf (int) ;
 int nvlist_exists (int *,char*) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 int nvlist_lookup_uint64 (int *,char*,int *) ;
 int releasef (int) ;

__attribute__((used)) static int
zfs_ioc_send_new(const char *snapname, nvlist_t *innvl, nvlist_t *outnvl)
{
 int error;
 offset_t off;
 char *fromname = ((void*)0);
 int fd;
 file_t *fp;
 boolean_t largeblockok;
 boolean_t embedok;
 boolean_t compressok;
 boolean_t rawok;
 uint64_t resumeobj = 0;
 uint64_t resumeoff = 0;
 char *redactbook = ((void*)0);

 fd = fnvlist_lookup_int32(innvl, "fd");

 (void) nvlist_lookup_string(innvl, "fromsnap", &fromname);

 largeblockok = nvlist_exists(innvl, "largeblockok");
 embedok = nvlist_exists(innvl, "embedok");
 compressok = nvlist_exists(innvl, "compressok");
 rawok = nvlist_exists(innvl, "rawok");

 (void) nvlist_lookup_uint64(innvl, "resume_object", &resumeobj);
 (void) nvlist_lookup_uint64(innvl, "resume_offset", &resumeoff);

 (void) nvlist_lookup_string(innvl, "redactbook", &redactbook);

 if ((fp = getf(fd)) == ((void*)0))
  return (SET_ERROR(EBADF));

 off = fp->f_offset;
 dmu_send_outparams_t out = {0};
 out.dso_outfunc = dump_bytes;
 out.dso_arg = fp->f_vnode;
 out.dso_dryrun = B_FALSE;
 error = dmu_send(snapname, fromname, embedok, largeblockok, compressok,
     rawok, resumeobj, resumeoff, redactbook, fd, &off, &out);

 if (VOP_SEEK(fp->f_vnode, fp->f_offset, &off, ((void*)0)) == 0)
  fp->f_offset = off;

 releasef(fd);
 return (error);
}
