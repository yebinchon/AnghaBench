
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARPHRD_VOID ;
 int EINVAL ;
 int LOG_INFO ;
 int arphrd_from_name (char const*) ;
 char* arphrd_to_name (int) ;
 int assert_se (int) ;
 int log_info (char*,int,char const*) ;
 int test_setup_logging (int ) ;

int main(int argc, const char *argv[]) {
        test_setup_logging(LOG_INFO);

        for (int i = 0; i <= ARPHRD_VOID + 1; i++) {
                const char *name;

                name = arphrd_to_name(i);
                if (name) {
                        log_info("%i: %s", i, name);

                        assert_se(arphrd_from_name(name) == i);
                }
        }

        assert_se(arphrd_to_name(ARPHRD_VOID + 1) == ((void*)0));
        assert_se(arphrd_from_name("huddlduddl") == -EINVAL);
        assert_se(arphrd_from_name("") == -EINVAL);

        return 0;
}
