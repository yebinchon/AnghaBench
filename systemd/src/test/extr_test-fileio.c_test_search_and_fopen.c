
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assert_se (int) ;
 char* basename (char*) ;
 int close (int) ;
 int fclose (int *) ;
 int mkostemp_safe (char*) ;
 int search_and_fopen (char*,char*,char*,char const**,int **) ;
 int unlink (char*) ;

__attribute__((used)) static void test_search_and_fopen(void) {
        const char *dirs[] = {"/tmp/foo/bar", "/tmp", ((void*)0)};

        char name[] = "/tmp/test-search_and_fopen.XXXXXX";
        int fd, r;
        FILE *f;

        fd = mkostemp_safe(name);
        assert_se(fd >= 0);
        close(fd);

        r = search_and_fopen(basename(name), "r", ((void*)0), dirs, &f);
        assert_se(r >= 0);
        fclose(f);

        r = search_and_fopen(name, "r", ((void*)0), dirs, &f);
        assert_se(r >= 0);
        fclose(f);

        r = search_and_fopen(basename(name), "r", "/", dirs, &f);
        assert_se(r >= 0);
        fclose(f);

        r = search_and_fopen("/a/file/which/does/not/exist/i/guess", "r", ((void*)0), dirs, &f);
        assert_se(r < 0);
        r = search_and_fopen("afilewhichdoesnotexistiguess", "r", ((void*)0), dirs, &f);
        assert_se(r < 0);

        r = unlink(name);
        assert_se(r == 0);

        r = search_and_fopen(basename(name), "r", ((void*)0), dirs, &f);
        assert_se(r < 0);
}
