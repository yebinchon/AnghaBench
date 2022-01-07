
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int ELEMENTSOF (char**) ;
 int af_from_name (char*) ;
 int af_max () ;
 char** af_names ;
 int * af_to_name (int) ;
 int assert_se (int) ;
 int streq (int *,char*) ;

int main(int argc, const char *argv[]) {

        unsigned i;

        for (i = 0; i < ELEMENTSOF(af_names); i++) {
                if (af_names[i]) {
                        assert_se(streq(af_to_name(i), af_names[i]));
                        assert_se(af_from_name(af_names[i]) == (int) i);
                }
        }

        assert_se(af_to_name(af_max()) == ((void*)0));
        assert_se(af_to_name(-1) == ((void*)0));
        assert_se(af_from_name("huddlduddl") == -EINVAL);
        assert_se(af_from_name("") == -EINVAL);

        return 0;
}
