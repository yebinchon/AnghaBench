
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int RTLD_NOW ;
 int assert_se (int) ;
 scalar_t__ dlclose (void*) ;
 void* dlopen (char*,int ) ;

int main(int argc, char **argv) {
        void *handle;

        assert_se(handle = dlopen(argv[1], RTLD_NOW));
        assert_se(dlclose(handle) == 0);

        return EXIT_SUCCESS;
}
