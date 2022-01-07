
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 scalar_t__ catalog_dirs ;
 int catalog_update (char const*,int *,char const* const*) ;
 char const* const* no_catalog_dirs ;

__attribute__((used)) static void test_catalog_update(const char *database) {
        int r;


        r = catalog_update(database, ((void*)0), ((void*)0));
        assert_se(r == 0);


        r = catalog_update(database, ((void*)0), no_catalog_dirs);
        assert_se(r == 0);



        r = catalog_update(database, ((void*)0), (const char * const *) catalog_dirs);
        assert_se(r == 0);
}
