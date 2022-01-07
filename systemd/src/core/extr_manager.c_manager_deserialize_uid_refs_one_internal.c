
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uid_t ;
typedef char const Manager ;
typedef int Hashmap ;


 int DESTROY_IPC_FLAG ;
 int PTR_TO_UINT32 (int ) ;
 int UID_TO_PTR (scalar_t__) ;
 int UINT32_TO_PTR (int) ;
 int assert (char const*) ;
 int hashmap_ensure_allocated (int **,int *) ;
 int hashmap_get (int *,int ) ;
 int hashmap_replace (int *,int ,int ) ;
 int log_debug (char*) ;
 int log_debug_errno (int,char*) ;
 int log_oom () ;
 int parse_uid (char const*,scalar_t__*) ;
 int trivial_hash_ops ;

__attribute__((used)) static void manager_deserialize_uid_refs_one_internal(
                Manager *m,
                Hashmap** uid_refs,
                const char *value) {

        uid_t uid;
        uint32_t c;
        int r;

        assert(m);
        assert(uid_refs);
        assert(value);

        r = parse_uid(value, &uid);
        if (r < 0 || uid == 0) {
                log_debug("Unable to parse UID reference serialization");
                return;
        }

        r = hashmap_ensure_allocated(uid_refs, &trivial_hash_ops);
        if (r < 0) {
                log_oom();
                return;
        }

        c = PTR_TO_UINT32(hashmap_get(*uid_refs, UID_TO_PTR(uid)));
        if (c & DESTROY_IPC_FLAG)
                return;

        c |= DESTROY_IPC_FLAG;

        r = hashmap_replace(*uid_refs, UID_TO_PTR(uid), UINT32_TO_PTR(c));
        if (r < 0) {
                log_debug_errno(r, "Failed to add UID reference entry: %m");
                return;
        }
}
