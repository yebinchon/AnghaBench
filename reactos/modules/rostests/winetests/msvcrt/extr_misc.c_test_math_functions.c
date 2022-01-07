
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EDOM ;
 int INFINITY ;
 int NAN ;
 int almost_equal (double,double) ;
 int errno ;
 int ok (int,char*,int) ;
 double p_atan (int ) ;
 int p_exp (int ) ;
 double p_tanh (int ) ;

__attribute__((used)) static void test_math_functions(void)
{
    double ret;

    errno = 0xdeadbeef;
    p_atan(NAN);
    ok(errno == EDOM, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = p_atan(INFINITY);
    ok(almost_equal(ret, 1.57079632679489661923), "ret = %lf\n", ret);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = p_atan(-INFINITY);
    ok(almost_equal(ret, -1.57079632679489661923), "ret = %lf\n", ret);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    p_tanh(NAN);
    ok(errno == EDOM, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = p_tanh(INFINITY);
    ok(almost_equal(ret, 1.0), "ret = %lf\n", ret);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    p_exp(NAN);
    ok(errno == EDOM, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    p_exp(INFINITY);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);
}
