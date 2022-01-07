
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_INVALID ;
 int TTY_GID ;
 int assert (int) ;
 int getegid () ;
 int getgid () ;
 scalar_t__ in_gid (int ) ;

__attribute__((used)) static void test_in_gid(void) {

        assert(in_gid(getgid()) >= 0);
        assert(in_gid(getegid()) >= 0);

        assert(in_gid(GID_INVALID) < 0);
        assert(in_gid(TTY_GID) == 0);
}
