
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int dataset ;


 int DMU_OST_ZFS ;
 int IOC_INPUT_TEST (int ,char*,int *,int *,int ) ;
 int MAXNAMELEN ;
 int ZFS_IOC_CREATE ;
 int fnvlist_add_int32 (int *,char*,int ) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_uint64 (int *,char*,int) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void
test_create(const char *pool)
{
 char dataset[MAXNAMELEN + 32];

 (void) snprintf(dataset, sizeof (dataset), "%s/create-fs", pool);

 nvlist_t *required = fnvlist_alloc();
 nvlist_t *optional = fnvlist_alloc();
 nvlist_t *props = fnvlist_alloc();

 fnvlist_add_int32(required, "type", DMU_OST_ZFS);
 fnvlist_add_uint64(props, "recordsize", 8192);
 fnvlist_add_nvlist(optional, "props", props);

 IOC_INPUT_TEST(ZFS_IOC_CREATE, dataset, required, optional, 0);

 nvlist_free(required);
 nvlist_free(optional);
}
