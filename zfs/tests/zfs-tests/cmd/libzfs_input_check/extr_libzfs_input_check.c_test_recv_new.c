
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uchar_t ;
typedef int ssize_t ;
typedef int snapshot ;
typedef int nvlist_t ;
typedef int drr ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ dmu_replay_record_t ;


 int EBADE ;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int MAXNAMELEN ;
 int O_RDWR ;
 int ZFS_DEV ;
 int ZFS_IOC_RECV_NEW ;
 int * action_handle ;
 int close (int) ;
 int errno ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_byte_array (int *,char*,int *,int) ;
 int fnvlist_add_int32 (int *,char*,int) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_string (int *,char*,char*) ;
 int fnvlist_add_uint64 (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 int fprintf (int ,char*,char*) ;
 int nvlist_free (int *) ;
 int open (int ,int ) ;
 char* origin ;
 int pread (int,TYPE_1__*,int,int ) ;
 int * recvdprops ;
 int snprintf (char*,int,char*,char const*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
test_recv_new(const char *dataset, int fd)
{
 dmu_replay_record_t drr = { 0 };
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *optional = fnvlist_alloc();
 nvlist_t *props = fnvlist_alloc();
 char snapshot[MAXNAMELEN + 32];
 ssize_t count;

 int cleanup_fd = open(ZFS_DEV, O_RDWR);

 (void) snprintf(snapshot, sizeof (snapshot), "%s@replicant", dataset);

 count = pread(fd, &drr, sizeof (drr), 0);
 if (count != sizeof (drr)) {
  (void) fprintf(stderr, "could not read stream: %s\n",
      strerror(errno));
 }

 fnvlist_add_string(required, "snapname", snapshot);
 fnvlist_add_byte_array(required, "begin_record", (uchar_t *)&drr,
     sizeof (drr));
 fnvlist_add_int32(required, "input_fd", fd);

 fnvlist_add_string(props, "org.openzfs:launch", "September 17th, 2013");
 fnvlist_add_nvlist(optional, "localprops", props);
 fnvlist_add_boolean(optional, "force");
 fnvlist_add_int32(optional, "cleanup_fd", cleanup_fd);
 IOC_INPUT_TEST(ZFS_IOC_RECV_NEW, dataset, required, optional, EBADE);

 nvlist_free(props);
 nvlist_free(optional);
 nvlist_free(required);

 (void) close(cleanup_fd);
}
