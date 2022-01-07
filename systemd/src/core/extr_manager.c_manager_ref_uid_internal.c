
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uid_t ;
typedef int gid_t ;
typedef int * Manager ;
typedef int Hashmap ;


 int DESTROY_IPC_FLAG ;
 int EOVERFLOW ;
 scalar_t__ GID_INVALID ;
 int PTR_TO_UINT32 (int ) ;
 scalar_t__ UID_INVALID ;
 int UID_TO_PTR (scalar_t__) ;
 int UINT32_TO_PTR (int) ;
 int assert (int **) ;
 int assert_cc (int) ;
 int hashmap_ensure_allocated (int **,int *) ;
 int hashmap_get (int *,int ) ;
 int hashmap_replace (int *,int ,int ) ;
 int trivial_hash_ops ;
 int ** uid_is_valid (scalar_t__) ;

__attribute__((used)) static int manager_ref_uid_internal(
                Manager *m,
                Hashmap **uid_refs,
                uid_t uid,
                bool clean_ipc) {

        uint32_t c, n;
        int r;

        assert(m);
        assert(uid_refs);
        assert(uid_is_valid(uid));




        assert_cc(sizeof(uid_t) == sizeof(gid_t));
        assert_cc(UID_INVALID == (uid_t) GID_INVALID);

        if (uid == 0)
                return 0;

        r = hashmap_ensure_allocated(uid_refs, &trivial_hash_ops);
        if (r < 0)
                return r;

        c = PTR_TO_UINT32(hashmap_get(*uid_refs, UID_TO_PTR(uid)));

        n = c & ~DESTROY_IPC_FLAG;
        n++;

        if (n & DESTROY_IPC_FLAG)
                return -EOVERFLOW;

        c = n | (c & DESTROY_IPC_FLAG) | (clean_ipc ? DESTROY_IPC_FLAG : 0);

        return hashmap_replace(*uid_refs, UID_TO_PTR(uid), UINT32_TO_PTR(c));
}
