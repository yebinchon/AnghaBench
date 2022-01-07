
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 scalar_t__ NUM ;
 int assert_se (int) ;
 int is_main_thread () ;
 int * set_free (int *) ;
 scalar_t__ set_size (int *) ;

__attribute__((used)) static void* thread(void *p) {
        Set **s = p;

        assert_se(s);
        assert_se(*s);

        assert_se(!is_main_thread());
        assert_se(set_size(*s) == NUM);
        *s = set_free(*s);

        return ((void*)0);
}
