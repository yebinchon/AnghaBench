
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int EINVAL ;
 int assert_se (int) ;
 int major (int ) ;
 int minor (int ) ;
 int parse_dev (char*,int *) ;

__attribute__((used)) static void test_parse_dev(void) {
        dev_t dev;

        assert_se(parse_dev("", &dev) == -EINVAL);
        assert_se(parse_dev("junk", &dev) == -EINVAL);
        assert_se(parse_dev("0", &dev) == -EINVAL);
        assert_se(parse_dev("5", &dev) == -EINVAL);
        assert_se(parse_dev("5:", &dev) == -EINVAL);
        assert_se(parse_dev(":5", &dev) == -EINVAL);
        assert_se(parse_dev("-1:-1", &dev) == -EINVAL);

        assert_se(parse_dev("4294967295:4294967295", &dev) == -EINVAL);

        assert_se(parse_dev("8:11", &dev) >= 0 && major(dev) == 8 && minor(dev) == 11);
        assert_se(parse_dev("0:0", &dev) >= 0 && major(dev) == 0 && minor(dev) == 0);
}
