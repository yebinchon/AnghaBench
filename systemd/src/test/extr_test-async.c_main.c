
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFD ;
 int assert_se (int) ;
 int async_func ;
 int asynchronous_close (int) ;
 scalar_t__ asynchronous_job (int ,int *) ;
 scalar_t__ asynchronous_sync (int *) ;
 int fcntl (int,int ) ;
 int mkostemp_safe (char*) ;
 int sleep (int) ;
 int test_async ;
 int unlink (char*) ;

int main(int argc, char *argv[]) {
        int fd;
        char name[] = "/tmp/test-asynchronous_close.XXXXXX";

        fd = mkostemp_safe(name);
        assert_se(fd >= 0);
        asynchronous_close(fd);

        assert_se(asynchronous_job(async_func, ((void*)0)) >= 0);

        assert_se(asynchronous_sync(((void*)0)) >= 0);

        sleep(1);

        assert_se(fcntl(fd, F_GETFD) == -1);
        assert_se(test_async);

        (void) unlink(name);

        return 0;
}
