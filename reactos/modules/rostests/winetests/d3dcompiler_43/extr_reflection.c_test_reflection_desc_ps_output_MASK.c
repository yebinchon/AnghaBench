#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_11__ {scalar_t__ SemanticIndex; scalar_t__ Register; scalar_t__ SystemValueType; scalar_t__ ComponentType; scalar_t__ Mask; scalar_t__ ReadWriteMask; scalar_t__ Stream; int /*<<< orphan*/  SemanticName; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {TYPE_1__* lpVtbl; } ;
struct TYPE_9__ {scalar_t__ (* GetOutputParameterDesc ) (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ;scalar_t__ (* Release ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ ID3D11ShaderReflection ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_3__ D3D11_SIGNATURE_PARAMETER_DESC ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  IID_ID3D11ShaderReflection ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int,scalar_t__,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ ** test_reflection_desc_ps_output_blob ; 
 TYPE_3__* test_reflection_desc_ps_output_result ; 

__attribute__((used)) static void FUNC6(void)
{
    HRESULT hr;
    ULONG count;
    ID3D11ShaderReflection *ref11;
    D3D11_SIGNATURE_PARAMETER_DESC desc = {0};
    const D3D11_SIGNATURE_PARAMETER_DESC *pdesc;
    unsigned int i;

    for (i = 0; i < FUNC0(test_reflection_desc_ps_output_result); ++i)
    {
        hr = FUNC2(test_reflection_desc_ps_output_blob[i], test_reflection_desc_ps_output_blob[i][6], &IID_ID3D11ShaderReflection, (void **)&ref11);
        FUNC1(hr == S_OK, "(%u): D3DReflect failed %x\n", i, hr);

        pdesc = &test_reflection_desc_ps_output_result[i];

        hr = ref11->lpVtbl->GetOutputParameterDesc(ref11, 0, &desc);
        FUNC1(hr == S_OK, "(%u): GetOutputParameterDesc failed, got %x, expected %x\n", i, hr, S_OK);

        FUNC1(!FUNC3(desc.SemanticName, pdesc->SemanticName), "(%u): GetOutputParameterDesc SemanticName failed, got \"%s\", expected \"%s\"\n",
                i, desc.SemanticName, pdesc->SemanticName);
        FUNC1(desc.SemanticIndex == pdesc->SemanticIndex, "(%u): GetOutputParameterDesc SemanticIndex failed, got %u, expected %u\n",
                i, desc.SemanticIndex, pdesc->SemanticIndex);
        FUNC1(desc.Register == pdesc->Register, "(%u): GetOutputParameterDesc Register failed, got %u, expected %u\n",
                i, desc.Register, pdesc->Register);
        FUNC1(desc.SystemValueType == pdesc->SystemValueType, "(%u): GetOutputParameterDesc SystemValueType failed, got %x, expected %x\n",
                i, desc.SystemValueType, pdesc->SystemValueType);
        FUNC1(desc.ComponentType == pdesc->ComponentType, "(%u): GetOutputParameterDesc ComponentType failed, got %x, expected %x\n",
                i, desc.ComponentType, pdesc->ComponentType);
        FUNC1(desc.Mask == pdesc->Mask, "(%u): GetOutputParameterDesc Mask failed, got %x, expected %x\n",
                i, desc.Mask, pdesc->Mask);
        FUNC1(desc.ReadWriteMask == pdesc->ReadWriteMask, "(%u): GetOutputParameterDesc ReadWriteMask failed, got %x, expected %x\n",
                i, desc.ReadWriteMask, pdesc->ReadWriteMask);
        FUNC1(desc.Stream == pdesc->Stream, "(%u): GetOutputParameterDesc Stream failed, got %u, expected %u\n",
                i, desc.Stream, pdesc->ReadWriteMask);

        count = ref11->lpVtbl->Release(ref11);
        FUNC1(count == 0, "(%u): Release failed %u\n", i, count);
    }
}