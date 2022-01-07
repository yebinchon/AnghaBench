
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _putenv (char*) ;
 int _snprintf (char*,int,char*,char*) ;
 int _tzset () ;
 char* getenv (char*) ;
 int ok (int,char*,int) ;
 int* p___p__daylight () ;
 int* p___p__dstbias () ;
 int* p___p__timezone () ;
 int* p__dstbias () ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__tzset(void)
{
    char TZ_env[256];
    int ret;

    if(!p___p__daylight || !p___p__timezone || !p___p__dstbias) {
        skip("__p__daylight, __p__timezone or __p__dstbias is not available\n");
        return;
    }

    if (p__dstbias) {
        ret = *p__dstbias();
        ok(ret == -3600, "*__dstbias() = %d\n", ret);
        ret = *p___p__dstbias();
        ok(ret == -3600, "*__p__dstbias() = %d\n", ret);
    }
    else
        win_skip("__dstbias() is not available.\n");

    _snprintf(TZ_env,255,"TZ=%s",(getenv("TZ")?getenv("TZ"):""));

    ret = *p___p__daylight();
    ok(ret == 1, "*__p__daylight() = %d\n", ret);
    ret = *p___p__timezone();
    ok(ret == 28800, "*__p__timezone() = %d\n", ret);
    ret = *p___p__dstbias();
    ok(ret == -3600, "*__p__dstbias() = %d\n", ret);

    _putenv("TZ=xxx+1yyy");
    _tzset();
    ret = *p___p__daylight();
    ok(ret == 121, "*__p__daylight() = %d\n", ret);
    ret = *p___p__timezone();
    ok(ret == 3600, "*__p__timezone() = %d\n", ret);
    ret = *p___p__dstbias();
    ok(ret == -3600, "*__p__dstbias() = %d\n", ret);

    *p___p__dstbias() = 0;
    _putenv("TZ=xxx+1:3:5zzz");
    _tzset();
    ret = *p___p__daylight();
    ok(ret == 122, "*__p__daylight() = %d\n", ret);
    ret = *p___p__timezone();
    ok(ret == 3785, "*__p__timezone() = %d\n", ret);
    ret = *p___p__dstbias();
    ok(ret == 0, "*__p__dstbias() = %d\n", ret);

    _putenv(TZ_env);
}
