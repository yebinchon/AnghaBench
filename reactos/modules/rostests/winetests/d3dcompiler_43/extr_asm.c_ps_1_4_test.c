
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; } ;
struct shader_test {char* member_0; TYPE_1__ member_1; } ;


 int ARRAY_SIZE (struct shader_test*) ;
 int exec_tests (char*,struct shader_test*,int ) ;

__attribute__((used)) static void ps_1_4_test(void) {
    struct shader_test tests[] = {

        {
            "ps_1_4\n"
            "mov r0, r1\n",
            {0xffff0104, 0x00000001, 0x800f0000, 0x80e40001, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "mov r0, r5\n",
            {0xffff0104, 0x00000001, 0x800f0000, 0x80e40005, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "mov r0, c7\n",
            {0xffff0104, 0x00000001, 0x800f0000, 0xa0e40007, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "mov r0, v1\n",
            {0xffff0104, 0x00000001, 0x800f0000, 0x90e40001, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "phase\n",
            {0xffff0104, 0x0000fffd, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texcrd r0, t0\n",
            {0xffff0104, 0x00000040, 0x800f0000, 0xb0e40000, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texcrd r4, t3\n",
            {0xffff0104, 0x00000040, 0x800f0004, 0xb0e40003, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texcrd_sat r4, t3\n",
            {0xffff0104, 0x00000040, 0x801f0004, 0xb0e40003, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texld r0, t0\n",
            {0xffff0104, 0x00000042, 0x800f0000, 0xb0e40000, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texld r1, t4\n",
            {0xffff0104, 0x00000042, 0x800f0001, 0xb0e40004, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texld r5, r0\n",
            {0xffff0104, 0x00000042, 0x800f0005, 0x80e40000, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texld r5, c0\n",
            {0xffff0104, 0x00000042, 0x800f0005, 0xa0e40000, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texld r5, r2_dz\n",
            {0xffff0104, 0x00000042, 0x800f0005, 0x89e40002, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "bem r1.rg, c0, r0\n",
            {0xffff0104, 0x00000059, 0x80030001, 0xa0e40000, 0x80e40000, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texdepth r5\n",
            {0xffff0104, 0x00000057, 0x800f0005, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "add r0, r1, r2_bx2\n",
            {0xffff0104, 0x00000002, 0x800f0000, 0x80e40001, 0x84e40002, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "add_x4 r0, r1, r2\n",
            {0xffff0104, 0x00000002, 0x820f0000, 0x80e40001, 0x80e40002, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "add r0.rgb, r1, r2\n"
            "+add r0.a, r1, r2\n",
            {0xffff0104, 0x00000002, 0x80070000, 0x80e40001, 0x80e40002, 0x40000002,
             0x80080000, 0x80e40001, 0x80e40002, 0x0000ffff}
        },
        {
            "ps_1_4\n"
            "texdepth_x2 r5\n",
            {0xffff0104, 0x00000057, 0x810f0005, 0x0000ffff}
        },
        {
            "ps.1.4\n"
            "bem_d2 r1, c0, r0\n",
            {0xffff0104, 0x00000059, 0x8f0f0001, 0xa0e40000, 0x80e40000, 0x0000ffff}
        },
    };

    exec_tests("ps_1_4", tests, ARRAY_SIZE(tests));
}
