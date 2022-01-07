
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;
 int EXIT_SUCCESS ;
 int assert_se (int) ;
 int test_one (int,int,int,int) ;

int main(int argc, char *argv[]) {
        int r;

        r = test_one(1, 1, 0, 0);
        assert_se(r >= 0);

        r = test_one(1, 0, 0, 0);
        assert_se(r >= 0);

        r = test_one(0, 1, 0, 0);
        assert_se(r >= 0);

        r = test_one(0, 0, 0, 0);
        assert_se(r >= 0);

        r = test_one(1, 1, 1, 1);
        assert_se(r >= 0);

        r = test_one(1, 1, 0, 1);
        assert_se(r >= 0);

        r = test_one(1, 1, 1, 0);
        assert_se(r == -EPERM);

        return EXIT_SUCCESS;
}
