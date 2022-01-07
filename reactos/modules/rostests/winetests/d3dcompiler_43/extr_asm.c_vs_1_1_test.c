
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct shader_test {char* member_0; TYPE_1__ member_1; } ;


 int ARRAY_SIZE (struct shader_test*) ;
 int exec_tests (char*,struct shader_test*,int ) ;

__attribute__((used)) static void vs_1_1_test(void) {
    struct shader_test tests[] = {

        {
            "vs_1_1\n"
            "add r0, r1, r2\n",
            {0xfffe0101, 0x00000002, 0x800f0000, 0x80e40001, 0x80e40002, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "nop\n",
            {0xfffe0101, 0x00000000, 0x0000ffff}
        },

        {
            "vs_1_1\n"
            "mov oPos, c0\n",
            {0xfffe0101, 0x00000001, 0xc00f0000, 0xa0e40000, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov oT0, c0\n",
            {0xfffe0101, 0x00000001, 0xe00f0000, 0xa0e40000, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov oT5, c0\n",
            {0xfffe0101, 0x00000001, 0xe00f0005, 0xa0e40000, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov oD0, c0\n",
            {0xfffe0101, 0x00000001, 0xd00f0000, 0xa0e40000, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov oD1, c0\n",
            {0xfffe0101, 0x00000001, 0xd00f0001, 0xa0e40000, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov oFog, c0.x\n",
            {0xfffe0101, 0x00000001, 0xc00f0001, 0xa0000000, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov oPts, c0.x\n",
            {0xfffe0101, 0x00000001, 0xc00f0002, 0xa0000000, 0x0000ffff}
        },

        {
            "vs_1_1\n"
            "dcl_position0 v0",
            {0xfffe0101, 0x0000001f, 0x80000000, 0x900f0000, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "dcl_position v1",
            {0xfffe0101, 0x0000001f, 0x80000000, 0x900f0001, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "dcl_normal12 v15",
            {0xfffe0101, 0x0000001f, 0x800c0003, 0x900f000f, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "add r0, v0, v1\n",
            {0xfffe0101, 0x00000002, 0x800f0000, 0x90e40000, 0x90e40001, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "def c12, 0, -1, -0.5, 1024\n",
            {0xfffe0101, 0x00000051, 0xa00f000c, 0x00000000, 0xbf800000, 0xbf000000,
             0x44800000, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "dp4 r0.xw, r1.wzyx, r2.xxww\n",
            {0xfffe0101, 0x00000009, 0x80090000, 0x801b0001, 0x80f00002, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "add r0, -r0.x, -r1\n",
            {0xfffe0101, 0x00000002, 0x800f0000, 0x81000000, 0x81e40001, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov r0, c0[a0.x]\n",
            {0xfffe0101, 0x00000001, 0x800f0000, 0xa0e42000, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov r0, c1[a0.x + 2]\n",
            {0xfffe0101, 0x00000001, 0x800f0000, 0xa0e42003, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "def c0, 1.0f, 1.0f, 1.0f, 0.5f\n",
            {0xfffe0101, 0x00000051, 0xa00f0000, 0x3f800000, 0x3f800000, 0x3f800000,
             0x3f000000, 0x0000ffff}
        },

        {
            "vs_1_1\n"
            "mov r0, c[ a0.x + 12 ]\n",
            {0xfffe0101, 0x00000001, 0x800f0000, 0xa0e4200c, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov r0, c[ 2 + a0.x ]\n",
            {0xfffe0101, 0x00000001, 0x800f0000, 0xa0e42002, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov r0, c[ 2 + a0.x + 12 ]\n",
            {0xfffe0101, 0x00000001, 0x800f0000, 0xa0e4200e, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov r0, c[ 2 + 10 + 12 ]\n",
            {0xfffe0101, 0x00000001, 0x800f0000, 0xa0e40018, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "mov r0, c4[ 2 ]\n",
            {0xfffe0101, 0x00000001, 0x800f0000, 0xa0e40006, 0x0000ffff}
        },
        {
            "vs_1_1\n"
            "rcp r0, v0.x\n",
            {0xfffe0101, 0x00000006, 0x800f0000, 0x90000000, 0x0000ffff}
        },
        {
            "vs.1.1\n"
            "rsq r0, v0.x\n",
            {0xfffe0101, 0x00000007, 0x800f0000, 0x90000000, 0x0000ffff}
        },
    };

    exec_tests("vs_1_1", tests, ARRAY_SIZE(tests));
}
