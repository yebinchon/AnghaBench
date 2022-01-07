
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int B_TRUE ;
 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_CHANNEL_PROGRAM ;
 int fnvlist_add_boolean_value (int *,char*,int ) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int fnvlist_add_string_array (int *,char*,char* const*,int) ;
 int fnvlist_add_uint64 (int *,char*,int) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_channel_program(const char *pool)
{
 const char *program =
     "arg = ...\n"
     "argv = arg[\"argv\"]\n"
     "return argv[1]";
 char *const argv[1] = { "Hello World!" };
 nvlist_t *required = fnvlist_alloc();
 nvlist_t *optional = fnvlist_alloc();
 nvlist_t *args = fnvlist_alloc();

 fnvlist_add_string(required, "program", program);
 fnvlist_add_string_array(args, "argv", argv, 1);
 fnvlist_add_nvlist(required, "arg", args);

 fnvlist_add_boolean_value(optional, "sync", B_TRUE);
 fnvlist_add_uint64(optional, "instrlimit", 1000 * 1000);
 fnvlist_add_uint64(optional, "memlimit", 8192 * 1024);

 IOC_INPUT_TEST(ZFS_IOC_CHANNEL_PROGRAM, pool, required, optional, 0);

 nvlist_free(args);
 nvlist_free(optional);
 nvlist_free(required);
}
