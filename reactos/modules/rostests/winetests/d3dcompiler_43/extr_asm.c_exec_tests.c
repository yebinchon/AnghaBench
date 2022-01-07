
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_test {scalar_t__* bytes; int text; } ;
typedef int ID3DBlob ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int D3DCOMPILE_SKIP_VALIDATION ;
 scalar_t__ D3DSIO_END ;
 scalar_t__ FAILED (int) ;
 scalar_t__ FALSE ;
 scalar_t__* ID3D10Blob_GetBufferPointer (int *) ;
 int ID3D10Blob_Release (int *) ;
 int S_OK ;
 scalar_t__ TRUE ;
 int dump_shader (scalar_t__*) ;
 int ok (int,char*,char const*,unsigned int,...) ;
 int pD3DAssemble (int ,int ,int *,int *,int *,int ,int **,int **) ;
 int strlen (int ) ;
 int trace (char*,char*) ;

__attribute__((used)) static void exec_tests(const char *name, struct shader_test tests[], unsigned int count) {
    HRESULT hr;
    DWORD *res;
    unsigned int i, j;
    BOOL diff;
    ID3DBlob *shader, *messages;

    for(i = 0; i < count; i++) {

        messages = ((void*)0);
        hr = pD3DAssemble(tests[i].text, strlen(tests[i].text), ((void*)0),
                          ((void*)0), ((void*)0), D3DCOMPILE_SKIP_VALIDATION,
                          &shader, &messages);
        ok(hr == S_OK, "Test %s, shader %d: D3DAssemble failed with error 0x%x - %d\n", name, i, hr, hr & 0x0000FFFF);
        if(messages) {
            trace("D3DAssemble messages:\n%s", (char *)ID3D10Blob_GetBufferPointer(messages));
            ID3D10Blob_Release(messages);
        }
        if(FAILED(hr)) continue;

        j = 0;
        diff = FALSE;
        res = ID3D10Blob_GetBufferPointer(shader);
        while(res[j] != D3DSIO_END && tests[i].bytes[j] != D3DSIO_END) {
            if(res[j] != tests[i].bytes[j]) diff = TRUE;
            j++;
        };

        if(res[j] != tests[i].bytes[j]) diff = TRUE;

        if(diff) {
            ok(FALSE, "Test %s, shader %d: Generated code differs\n", name, i);
            dump_shader(res);
        }
        ID3D10Blob_Release(shader);
    }
}
