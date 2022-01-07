
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int dmu_replay_record_t ;
typedef int boolean_t ;


 int recv_impl (char const*,int *,int *,int *,int ,char const*,int ,int ,int ,int,int const*,int,int *,int *,int *,int **) ;

int lzc_receive_with_cmdprops(const char *snapname, nvlist_t *props,
    nvlist_t *cmdprops, uint8_t *wkeydata, uint_t wkeylen, const char *origin,
    boolean_t force, boolean_t resumable, boolean_t raw, int input_fd,
    const dmu_replay_record_t *begin_record, int cleanup_fd,
    uint64_t *read_bytes, uint64_t *errflags, uint64_t *action_handle,
    nvlist_t **errors)
{
 return (recv_impl(snapname, props, cmdprops, wkeydata, wkeylen, origin,
     force, resumable, raw, input_fd, begin_record, cleanup_fd,
     read_bytes, errflags, action_handle, errors));
}
