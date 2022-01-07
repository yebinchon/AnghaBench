
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ID3DBlob ;
typedef int HRESULT ;
typedef int DWORD ;


 unsigned int ARRAY_SIZE (char const**) ;
 int D3DCOMPILE_SKIP_VALIDATION ;
 int D3DXERR_INVALIDDATA ;
 int * ID3D10Blob_GetBufferPointer (int *) ;
 int ID3D10Blob_Release (int *) ;
 int dump_shader (int *) ;
 int ok (int,char*,unsigned int,int,int) ;
 int pD3DAssemble (char const*,int ,int *,int *,int *,int ,int **,int **) ;
 int strlen (char const*) ;
 int trace (char*,char*) ;

__attribute__((used)) static void failure_test(void) {
    const char * tests[] = {

        "ps_3_0\n"
        "dcl_2d s2\n"
        "texldd_x2 r0, v1, s2, v3, v4\n",

        "vs.1.1\r\n"
        "add r0.rgb, r0, r1\n"
        "+add r0.a, r0, r2\n",

        "ps_2_0\n"
        "texld r0, t0, s0\n"
        "add r0.rgb, r0, r1\n"
        "+add r0.a, r0, v1\n",

        "vs_1_1\n"
        "(p0) add r0, r0, v0\n",

        "ps_3_0\n"
        "mov r0, v[ a0 + 12 ]\n",

        "vs_1_1\n"
        "mov r0, s0\n",

        "ps_3_0\n"
        "mov r0, v[ aL.x + 12 ]\n",

        "ps_3_0\n"
        "dcl_2d s2\n"
        "texldd r0, t1, s2, v3, v4\n",

        "ps_1_3\n"
        "mov_x2_x2 r0, r1\n",

        "vs_1_1\n"
        "mov r0, r1, r2\n",

        "ps_1_4\n"
        "texld r5, -r2_dz\n",

        "ps_2_0\n"
        "mov r2, 1 - r0\n",

        "vs_3_0\n"
        "mov r2, 2 - r0\n",

        "vs_3_0\n"
        "mov r2, c[ aL + 3.4 ]\n",

        "vs_3_0\n"
        "mov r2, 1 - r1\n",

        "vs_1_1\n"
        "mov r2, r1_x2\n",

        "vs_1_1\n"
        "mov r2, r1_abs\n",

        "ps_2_0\n"
        "mov r0, r1_x2\n",

        "vs_2_0\n"
        "mov r0, r1.abcd\n",

        "vs_2_0\n"
        "mov r0, r1.xyzwx\n",

        "vs_2_0\n"
        "mov r0, r1.\n",

        "vs_2_0\n"
        "mov r0.xxyz, r1\n",

        "ps_1_3\n"
        "mov r5, r0\n",

        "ps_3_0\n"
        "dcl_positiont o0\n",

        "vs_3_0\n"
        "add_pp r0, r0, r1\n",

        "ps_3_0\n"
        "add_x4 r0, r0, r1\n",

        "ps_1_3\n"
        "add oC0, r0, r1\n",

        "ps_3_0\n"
        "add oC4, r0, r1\n",

        "vs_3_0\n"
        "add r0, r0, v17\n",

        "vs_3_0\n"
        "add o13, r0, r1\n",

        "vs_3_0\n"
        "call l2048\n",

        "ps_3_0\n"
        "texld r0, r1, s20\n",

        "ps_1_3\n"
        "tex t5\n",

        "vs_3_0\n"
        "add r0, r0[ a0.x ], r1\n",

        "vs_2_0\n"
        "add r0, v[ a0.x ], r1\n",

        "ps_2_0\n"
        "add r0, v[ aL ], r1\n",

        "ps_2_0\n"
        "add r0, v[ r0 ], r1\n",

        "ps_3_0\n"
        "add r0, v[ a0.x ], r1\n",

        "vs_1_1\n"
        "mov r0, c0[ a0 ]\n",

        "ps_3_0\n"
        "dcl_texcoord0_sat v0\n",

        "ps_3_0\n"
        "dcl_texcoord0_x2 v0\n",

        "vs_3_0\n"
        "dcl_texcoord0_centroid v0\n",

        "vs_3_0\n"
        "dcl_2d_pp s0\n",

        "ps_2_0\n"
        "texm3x3vspec t3, t0\n",
    };
    HRESULT hr;
    unsigned int i;
    ID3DBlob *shader, *messages;

    for(i = 0; i < ARRAY_SIZE(tests); i++)
    {
        shader = ((void*)0);
        messages = ((void*)0);
        hr = pD3DAssemble(tests[i], strlen(tests[i]), ((void*)0),
                          ((void*)0), ((void*)0), D3DCOMPILE_SKIP_VALIDATION,
                          &shader, &messages);
        ok(hr == D3DXERR_INVALIDDATA, "Failure test, shader %d: "
           "expected D3DAssemble failure with D3DXERR_INVALIDDATA, "
           "got 0x%x - %d\n", i, hr, hr & 0x0000FFFF);
        if(messages) {
            trace("D3DAssemble messages:\n%s", (char *)ID3D10Blob_GetBufferPointer(messages));
            ID3D10Blob_Release(messages);
        }
        if(shader) {
            DWORD *res = ID3D10Blob_GetBufferPointer(shader);
            dump_shader(res);
            ID3D10Blob_Release(shader);
        }
    }
}
