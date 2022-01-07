
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int IOC_INPUT_TEST (int ,char const*,int *,int *,int ) ;
 int ZFS_IOC_LOG_HISTORY ;
 int fnvlist_add_string (int *,char*,char*) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;

__attribute__((used)) static void
test_log_history(const char *pool)
{
 nvlist_t *required = fnvlist_alloc();

 fnvlist_add_string(required, "message", "input check");

 IOC_INPUT_TEST(ZFS_IOC_LOG_HISTORY, pool, required, ((void*)0), 0);

 nvlist_free(required);
}
