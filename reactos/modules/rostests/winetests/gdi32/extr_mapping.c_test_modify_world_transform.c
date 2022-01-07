
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int GM_ADVANCED ;
 int GetDC (int ) ;
 int MWT_IDENTITY ;
 int MWT_LEFTMULTIPLY ;
 int MWT_RIGHTMULTIPLY ;
 int ModifyWorldTransform (int ,int *,int ) ;
 int ReleaseDC (int ,int ) ;
 int SetGraphicsMode (int ,int ) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_modify_world_transform(void)
{
    HDC hdc = GetDC(0);
    int ret;

    ret = SetGraphicsMode(hdc, GM_ADVANCED);
    ok(ret, "ret = %d\n", ret);

    ret = ModifyWorldTransform(hdc, ((void*)0), MWT_IDENTITY);
    ok(ret, "ret = %d\n", ret);

    ret = ModifyWorldTransform(hdc, ((void*)0), MWT_LEFTMULTIPLY);
    ok(!ret, "ret = %d\n", ret);

    ret = ModifyWorldTransform(hdc, ((void*)0), MWT_RIGHTMULTIPLY);
    ok(!ret, "ret = %d\n", ret);

    ReleaseDC(0, hdc);
}
