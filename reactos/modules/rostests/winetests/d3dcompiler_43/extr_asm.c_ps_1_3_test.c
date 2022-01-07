
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; int member_10; int member_11; int member_12; int member_13; } ;
struct shader_test {char* member_0; TYPE_1__ member_1; } ;


 int ARRAY_SIZE (struct shader_test*) ;
 int exec_tests (char*,struct shader_test*,int ) ;

__attribute__((used)) static void ps_1_3_test(void) {
    struct shader_test tests[] = {

        {
            "ps_1_3\n"
            "mov r0, r1\n",
            {0xffff0103, 0x00000001, 0x800f0000, 0x80e40001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "add r0, r1, r0\n",
            {0xffff0103, 0x00000002, 0x800f0000, 0x80e40001, 0x80e40000, 0x0000ffff}
        },

        {
            "ps_1_3\n"
            "mov r0, v0\n",
            {0xffff0103, 0x00000001, 0x800f0000, 0x90e40000, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "mov r0, v1\n",
            {0xffff0103, 0x00000001, 0x800f0000, 0x90e40001, 0x0000ffff}
        },

        {
            "ps_1_3\n"
            "tex t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texreg2ar t1, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000045, 0xb00f0001, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texreg2gb t1, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000046, 0xb00f0001, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texreg2rgb t1, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000052, 0xb00f0001, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "cnd r0, r1, r0, v0\n",
            {0xffff0103, 0x00000050, 0x800f0000, 0x80e40001, 0x80e40000, 0x90e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "cmp r0, r1, r0, v0\n",
            {0xffff0103, 0x00000058, 0x800f0000, 0x80e40001, 0x80e40000, 0x90e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "texkill t0\n",
            {0xffff0103, 0x00000041, 0xb00f0000, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texm3x2pad t1, t0\n"
            "texm3x2tex t2, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000047, 0xb00f0001, 0xb0e40000,
             0x00000048, 0xb00f0002, 0xb0e40000, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texm3x2pad t1, t0\n"
            "texm3x2depth t2, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000047, 0xb00f0001, 0xb0e40000,
             0x00000054, 0xb00f0002, 0xb0e40000, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texbem t1, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000043, 0xb00f0001, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texbeml t1, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000044, 0xb00f0001, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texdp3tex t1, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000053, 0xb00f0001, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texdp3 t1, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000055, 0xb00f0001, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texm3x3pad t1, t0\n"
            "texm3x3pad t2, t0\n"
            "texm3x3tex t3, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000049, 0xb00f0001, 0xb0e40000,
             0x00000049, 0xb00f0002, 0xb0e40000, 0x0000004a, 0xb00f0003, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texm3x3pad t1, t0\n"
            "texm3x3pad t2, t0\n"
            "texm3x3 t3, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000049, 0xb00f0001, 0xb0e40000,
             0x00000049, 0xb00f0002, 0xb0e40000, 0x00000056, 0xb00f0003, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texm3x3pad t1, t0\n"
            "texm3x3pad t2, t0\n"
            "texm3x3spec t3, t0, c0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000049, 0xb00f0001, 0xb0e40000,
             0x00000049, 0xb00f0002, 0xb0e40000, 0x0000004c, 0xb00f0003, 0xb0e40000,
             0xa0e40000, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texm3x3pad t1, t0\n"
            "texm3x3pad t2, t0\n"
            "texm3x3vspec t3, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000049, 0xb00f0001, 0xb0e40000,
             0x00000049, 0xb00f0002, 0xb0e40000, 0x0000004d, 0xb00f0003, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps_1_3\n"
            "texcoord t0\n",
            {0xffff0103, 0x00000040, 0xb00f0000, 0x0000ffff}
        },

        {
            "ps_1_3\n"
            "mov_x2_sat r0, 1 - r1\n",
            {0xffff0103, 0x00000001, 0x811f0000, 0x86e40001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "mov_d8 r0, -r1\n",
            {0xffff0103, 0x00000001, 0x8d0f0000, 0x81e40001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "mov_sat r0, r1_bx2\n",
            {0xffff0103, 0x00000001, 0x801f0000, 0x84e40001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "mov_sat r0, r1_bias\n",
            {0xffff0103, 0x00000001, 0x801f0000, 0x82e40001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "mov_sat r0, -r1_bias\n",
            {0xffff0103, 0x00000001, 0x801f0000, 0x83e40001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "mov_sat r0, -r1_bx2\n",
            {0xffff0103, 0x00000001, 0x801f0000, 0x85e40001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "mov_sat r0, -r1_x2\n",
            {0xffff0103, 0x00000001, 0x801f0000, 0x88e40001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "mov_x4_sat r0.a, -r1_bx2.a\n",
            {0xffff0103, 0x00000001, 0x82180000, 0x85ff0001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "texcoord_x2 t0\n",
            {0xffff0103, 0x00000040, 0xb10f0000, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex_x2 t0\n",
            {0xffff0103, 0x00000042, 0xb10f0000, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "texreg2ar_x4 t0, t1\n",
            {0xffff0103, 0x00000045, 0xb20f0000, 0xb0e40001, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "texbem_d4 t1, t0\n",
            {0xffff0103, 0x00000043, 0xbe0f0001, 0xb0e40000, 0x0000ffff}
        },
        {
            "ps_1_3\n"
            "tex t0\n"
            "texm3x3pad_x2 t1, t0\n"
            "texm3x3pad_x2 t2, t0\n"
            "texm3x3tex_x2 t3, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000049, 0xb10f0001, 0xb0e40000,
             0x00000049, 0xb10f0002, 0xb0e40000, 0x0000004a, 0xb10f0003, 0xb0e40000,
             0x0000ffff}
        },
        {
            "ps.1.3\n"
            "tex t0\n"
            "texdp3tex_x8 t1, t0\n",
            {0xffff0103, 0x00000042, 0xb00f0000, 0x00000053, 0xb30f0001, 0xb0e40000,
             0x0000ffff}
        },
    };

    exec_tests("ps_1_3", tests, ARRAY_SIZE(tests));
}
