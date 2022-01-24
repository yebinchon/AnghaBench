#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_9__ {TYPE_1__* lpVtbl; } ;
struct TYPE_8__ {int (* Release ) (TYPE_2__*) ;int /*<<< orphan*/  (* QueryInterface ) (TYPE_2__*,int /*<<< orphan*/ *,void**) ;} ;
typedef  TYPE_2__ ID3D11ShaderReflection ;
typedef  int /*<<< orphan*/  ID3D10ShaderReflection1 ;
typedef  int /*<<< orphan*/  ID3D10ShaderReflection ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_ID3D10ShaderReflection ; 
 int /*<<< orphan*/  IID_ID3D10ShaderReflection1 ; 
 int /*<<< orphan*/  IID_ID3D11ShaderReflection ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,void**) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,void**) ; 
 int FUNC6 (TYPE_2__*) ; 
 int* test_reflection_blob ; 

__attribute__((used)) static void FUNC7(void)
{
    HRESULT hr;
    ULONG count;
    ID3D11ShaderReflection *ref11, *ref11_test;
    ID3D10ShaderReflection *ref10;
    ID3D10ShaderReflection1 *ref10_1;

    hr = FUNC1(test_reflection_blob, test_reflection_blob[6], &IID_ID3D11ShaderReflection, (void **)&ref11);
    FUNC0(hr == S_OK, "D3DReflect failed, got %x, expected %x\n", hr, S_OK);

    hr = ref11->lpVtbl->QueryInterface(ref11, &IID_ID3D11ShaderReflection, (void **)&ref11_test);
    FUNC0(hr == S_OK, "QueryInterface failed, got %x, expected %x\n", hr, S_OK);

    count = ref11_test->lpVtbl->Release(ref11_test);
    FUNC0(count == 1, "Release failed %u\n", count);

    hr = ref11->lpVtbl->QueryInterface(ref11, &IID_ID3D10ShaderReflection, (void **)&ref10);
    FUNC0(hr == E_NOINTERFACE, "QueryInterface failed, got %x, expected %x\n", hr, E_NOINTERFACE);

    hr = ref11->lpVtbl->QueryInterface(ref11, &IID_ID3D10ShaderReflection1, (void **)&ref10_1);
    FUNC0(hr == E_NOINTERFACE, "QueryInterface failed, got %x, expected %x\n", hr, E_NOINTERFACE);

    count = ref11->lpVtbl->Release(ref11);
    FUNC0(count == 0, "Release failed %u\n", count);

    /* check invalid cases */
    hr = FUNC1(test_reflection_blob, test_reflection_blob[6], &IID_ID3D10ShaderReflection, (void **)&ref10);
    FUNC0(hr == E_NOINTERFACE, "D3DReflect failed, got %x, expected %x\n", hr, E_NOINTERFACE);

    hr = FUNC1(test_reflection_blob, test_reflection_blob[6], &IID_ID3D10ShaderReflection1, (void **)&ref10_1);
    FUNC0(hr == E_NOINTERFACE, "D3DReflect failed, got %x, expected %x\n", hr, E_NOINTERFACE);

    hr = FUNC1(NULL, test_reflection_blob[6], &IID_ID3D10ShaderReflection1, (void **)&ref10_1);
    FUNC0(hr == D3DERR_INVALIDCALL, "D3DReflect failed, got %x, expected %x\n", hr, D3DERR_INVALIDCALL);

    hr = FUNC1(NULL, test_reflection_blob[6], &IID_ID3D11ShaderReflection, (void **)&ref11);
    FUNC0(hr == D3DERR_INVALIDCALL, "D3DReflect failed, got %x, expected %x\n", hr, D3DERR_INVALIDCALL);

    /* returns different errors with different sizes */
    hr = FUNC1(test_reflection_blob, 31, &IID_ID3D10ShaderReflection1, (void **)&ref10_1);
    FUNC0(hr == D3DERR_INVALIDCALL, "D3DReflect failed, got %x, expected %x\n", hr, D3DERR_INVALIDCALL);

    hr = FUNC1(test_reflection_blob,  32, &IID_ID3D10ShaderReflection1, (void **)&ref10_1);
    FUNC0(hr == E_FAIL, "D3DReflect failed, got %x, expected %x\n", hr, E_FAIL);

    hr = FUNC1(test_reflection_blob, test_reflection_blob[6]-1, &IID_ID3D10ShaderReflection1, (void **)&ref10_1);
    FUNC0(hr == E_FAIL, "D3DReflect failed, got %x, expected %x\n", hr, E_FAIL);

    hr = FUNC1(test_reflection_blob,  31, &IID_ID3D11ShaderReflection, (void **)&ref11);
    FUNC0(hr == D3DERR_INVALIDCALL, "D3DReflect failed, got %x, expected %x\n", hr, D3DERR_INVALIDCALL);

    hr = FUNC1(test_reflection_blob,  32, &IID_ID3D11ShaderReflection, (void **)&ref11);
    FUNC0(hr == E_FAIL, "D3DReflect failed, got %x, expected %x\n", hr, E_FAIL);

    hr = FUNC1(test_reflection_blob,  test_reflection_blob[6]-1, &IID_ID3D11ShaderReflection, (void **)&ref11);
    FUNC0(hr == E_FAIL, "D3DReflect failed, got %x, expected %x\n", hr, E_FAIL);
}