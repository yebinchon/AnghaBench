
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _setmaxstdio (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_setmaxstdio(void)
{
    ok(2048 == _setmaxstdio(2048),"_setmaxstdio returned %d instead of 2048\n",_setmaxstdio(2048));
    ok(-1 == _setmaxstdio(2049),"_setmaxstdio returned %d instead of -1\n",_setmaxstdio(2049));
}
