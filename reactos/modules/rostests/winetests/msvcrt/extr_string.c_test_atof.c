
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double EBADF ;
 double EINVAL ;
 int almost_equal (double,double) ;
 double atof (char*) ;
 double errno ;
 int ok (int,char*,double) ;
 double p__atof_l (int *,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_atof(void)
{
    double d;

    d = atof("0.0");
    ok(almost_equal(d, 0.0), "d = %lf\n", d);

    d = atof("1.0");
    ok(almost_equal(d, 1.0), "d = %lf\n", d);

    d = atof("-1.0");
    ok(almost_equal(d, -1.0), "d = %lf\n", d);

    if (!p__atof_l)
    {
        win_skip("_atof_l not found\n");
        return;
    }

    errno = EBADF;
    d = atof(((void*)0));
    ok(almost_equal(d, 0.0), "d = %lf\n", d);
    ok(errno == EINVAL, "errno = %x\n", errno);

    errno = EBADF;
    d = p__atof_l(((void*)0), ((void*)0));
    ok(almost_equal(d, 0.0), "d = %lf\n", d);
    ok(errno == EINVAL, "errno = %x\n", errno);
}
