
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int dds_guid; } ;
struct TYPE_15__ {char* zfs_name; int zfs_hdl; TYPE_1__ zfs_dmustats; } ;
typedef TYPE_2__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_16__ {char* prevsnap; scalar_t__ (* filter_cb ) (TYPE_2__*,int ) ;scalar_t__ verbosity; void* prevsnap_obj; scalar_t__ progress; int debugnv; int outfd; int parsable; int dryrun; int size; scalar_t__ replicate; scalar_t__ fromorigin; int filter_cb_arg; int fsavl; int doall; scalar_t__ raw; scalar_t__ compress; scalar_t__ embed_data; scalar_t__ large_block; void* seento; int * tosnap; void* seenfrom; int * fromsnap; scalar_t__ std_out; } ;
typedef TYPE_3__ send_dump_data_t ;
typedef int pthread_t ;
struct TYPE_17__ {scalar_t__ pa_verbosity; scalar_t__ pa_estimate; int pa_parsable; int pa_fd; TYPE_2__* pa_zhp; int member_0; } ;
typedef TYPE_4__ progress_arg_t ;
typedef int nvlist_t ;
typedef int fromds ;
typedef int errbuf ;
typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;
typedef int boolean_t ;
typedef int FILE ;


 scalar_t__ B_FALSE ;
 void* B_TRUE ;
 int LZC_SEND_FLAG_COMPRESS ;
 int LZC_SEND_FLAG_EMBED_DATA ;
 int LZC_SEND_FLAG_LARGE_BLOCK ;
 int LZC_SEND_FLAG_RAW ;
 void* PTHREAD_CANCELED ;
 int TEXT_DOMAIN ;
 int VERIFY (int) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_OBJSETID ;
 char* dgettext (int ,char*) ;
 int dump_ioctl (TYPE_2__*,char*,void*,int,int ,int,int ) ;
 int * fsavl_find (int ,int ,char**) ;
 int gather_holds (TYPE_2__*,TYPE_3__*) ;
 int nvlist_exists (int *,char*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 int pthread_cancel (int ) ;
 int pthread_create (int *,int *,int ,TYPE_4__*) ;
 int pthread_join (int ,void**) ;
 int send_print_verbose (int *,char*,char*,scalar_t__,int ) ;
 int send_progress_thread ;
 int snprintf (char*,int,char*) ;
 int * stderr ;
 int * stdout ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int *,char*) ;
 int strcpy (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;
 int zfs_close (TYPE_2__*) ;
 void* zfs_prop_get_int (TYPE_2__*,int ) ;
 scalar_t__ zfs_send_space (TYPE_2__*,char*,char*,int,scalar_t__*) ;
 int zfs_standard_error (int ,int,char*) ;

__attribute__((used)) static int
dump_snapshot(zfs_handle_t *zhp, void *arg)
{
 send_dump_data_t *sdd = arg;
 progress_arg_t pa = { 0 };
 pthread_t tid;
 char *thissnap;
 enum lzc_send_flags flags = 0;
 int err;
 boolean_t isfromsnap, istosnap, fromorigin;
 boolean_t exclude = B_FALSE;
 FILE *fout = sdd->std_out ? stdout : stderr;

 err = 0;
 thissnap = strchr(zhp->zfs_name, '@') + 1;
 isfromsnap = (sdd->fromsnap != ((void*)0) &&
     strcmp(sdd->fromsnap, thissnap) == 0);

 if (!sdd->seenfrom && isfromsnap) {
  gather_holds(zhp, sdd);
  sdd->seenfrom = B_TRUE;
  (void) strlcpy(sdd->prevsnap, thissnap,
      sizeof (sdd->prevsnap));
  sdd->prevsnap_obj = zfs_prop_get_int(zhp, ZFS_PROP_OBJSETID);
  zfs_close(zhp);
  return (0);
 }

 if (sdd->seento || !sdd->seenfrom) {
  zfs_close(zhp);
  return (0);
 }

 istosnap = (strcmp(sdd->tosnap, thissnap) == 0);
 if (istosnap)
  sdd->seento = B_TRUE;

 if (sdd->large_block)
  flags |= LZC_SEND_FLAG_LARGE_BLOCK;
 if (sdd->embed_data)
  flags |= LZC_SEND_FLAG_EMBED_DATA;
 if (sdd->compress)
  flags |= LZC_SEND_FLAG_COMPRESS;
 if (sdd->raw)
  flags |= LZC_SEND_FLAG_RAW;

 if (!sdd->doall && !isfromsnap && !istosnap) {
  if (sdd->replicate) {
   char *snapname;
   nvlist_t *snapprops;




   nvlist_t *nvfs = fsavl_find(sdd->fsavl,
       zhp->zfs_dmustats.dds_guid, &snapname);

   VERIFY(0 == nvlist_lookup_nvlist(nvfs,
       "snapprops", &snapprops));
   VERIFY(0 == nvlist_lookup_nvlist(snapprops,
       thissnap, &snapprops));
   exclude = !nvlist_exists(snapprops, "is_clone_origin");
  } else {
   exclude = B_TRUE;
  }
 }





 if (exclude || (sdd->filter_cb != ((void*)0) &&
     sdd->filter_cb(zhp, sdd->filter_cb_arg) == B_FALSE)) {
  zfs_close(zhp);
  return (0);
 }

 gather_holds(zhp, sdd);
 fromorigin = sdd->prevsnap[0] == '\0' &&
     (sdd->fromorigin || sdd->replicate);

 if (sdd->verbosity != 0) {
  uint64_t size = 0;
  char fromds[ZFS_MAX_DATASET_NAME_LEN];

  if (sdd->prevsnap[0] != '\0') {
   (void) strlcpy(fromds, zhp->zfs_name, sizeof (fromds));
   *(strchr(fromds, '@') + 1) = '\0';
   (void) strlcat(fromds, sdd->prevsnap, sizeof (fromds));
  }
  if (zfs_send_space(zhp, zhp->zfs_name,
      sdd->prevsnap[0] ? fromds : ((void*)0), flags, &size) != 0) {
   size = 0;
  } else {
   send_print_verbose(fout, zhp->zfs_name,
       sdd->prevsnap[0] ? sdd->prevsnap : ((void*)0),
       size, sdd->parsable);
  }
  sdd->size += size;
 }

 if (!sdd->dryrun) {




  if (sdd->progress) {
   pa.pa_zhp = zhp;
   pa.pa_fd = sdd->outfd;
   pa.pa_parsable = sdd->parsable;
   pa.pa_estimate = B_FALSE;
   pa.pa_verbosity = sdd->verbosity;

   if ((err = pthread_create(&tid, ((void*)0),
       send_progress_thread, &pa)) != 0) {
    zfs_close(zhp);
    return (err);
   }
  }

  err = dump_ioctl(zhp, sdd->prevsnap, sdd->prevsnap_obj,
      fromorigin, sdd->outfd, flags, sdd->debugnv);

  if (sdd->progress) {
   void *status = ((void*)0);
   (void) pthread_cancel(tid);
   (void) pthread_join(tid, &status);
   int error = (int)(uintptr_t)status;
   if (error != 0 && status != PTHREAD_CANCELED) {
    char errbuf[1024];
    (void) snprintf(errbuf, sizeof (errbuf),
        dgettext(TEXT_DOMAIN,
        "progress thread exited nonzero"));
    return (zfs_standard_error(zhp->zfs_hdl, error,
        errbuf));
   }
  }
 }

 (void) strcpy(sdd->prevsnap, thissnap);
 sdd->prevsnap_obj = zfs_prop_get_int(zhp, ZFS_PROP_OBJSETID);
 zfs_close(zhp);
 return (err);
}
