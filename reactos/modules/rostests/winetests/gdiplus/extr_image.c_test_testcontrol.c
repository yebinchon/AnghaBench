
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef scalar_t__ DWORD ;


 int GdipTestControl (int ,scalar_t__*) ;
 int Ok ;
 int TestControlGetBuildNumber ;
 int expect (int ,int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_testcontrol(void)
{
    GpStatus stat;
    DWORD param;

    param = 0;
    stat = GdipTestControl(TestControlGetBuildNumber, &param);
    expect(Ok, stat);
    ok(param != 0, "Build number expected, got %u\n", param);
}
