#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_5__ {unsigned int vertex_count; unsigned int face_count; unsigned int vertex_per_face; int /*<<< orphan*/ * emissive; int /*<<< orphan*/ * specular; int /*<<< orphan*/  power; int /*<<< orphan*/  color; int /*<<< orphan*/  face_data_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  dSize; int /*<<< orphan*/  lpMemory; } ;
typedef  int /*<<< orphan*/  IDirect3DRMTexture ;
typedef  int /*<<< orphan*/  IDirect3DRMMesh ;
typedef  int /*<<< orphan*/  IDirect3DRMMaterial ;
typedef  int /*<<< orphan*/  IDirect3DRM ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  D3DVALUE ;
typedef  TYPE_1__ D3DRMLOADMEMORY ;
typedef  int /*<<< orphan*/  D3DCOLOR ;

/* Variables and functions */
 int /*<<< orphan*/  D3DRMLOAD_FROMMEMORY ; 
 int D3DRM_OK ; 
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,unsigned int*,unsigned int*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const IID_IDirect3DRMFrame ; 
 int /*<<< orphan*/  data_frame_mesh_materials ; 
 TYPE_2__* groups ; 
 int /*<<< orphan*/  mesh_builder ; 
 int /*<<< orphan*/  object_load_callback_frame ; 
 int /*<<< orphan*/  FUNC16 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(void)
{
    HRESULT hr;
    IDirect3DRM *d3drm;
    D3DRMLOADMEMORY info;
    const GUID *req_refiids[] = { &IID_IDirect3DRMFrame };
    IDirect3DRMMesh *mesh;
    ULONG size;
    IDirect3DRMMaterial *material;
    IDirect3DRMTexture *texture;
    int i;

    hr = FUNC0(&d3drm);
    FUNC16(hr == D3DRM_OK, "Direct3DRMCreate returned %x\n", hr);

    info.lpMemory = data_frame_mesh_materials;
    info.dSize = FUNC17(data_frame_mesh_materials);
    hr = FUNC14(d3drm, &info, NULL, (GUID**)req_refiids, 1, D3DRMLOAD_FROMMEMORY, object_load_callback_frame, (void*)0xdeadbeef, NULL, NULL, NULL);
    FUNC16(hr == D3DRM_OK, "Cannot load data (hr = %x)\n", hr);

    hr = FUNC5(mesh_builder, &mesh);
    FUNC16(hr == D3DRM_OK, "IDirect3DRMMeshBuilder_CreateMesh returned %x\n", hr);

    size = FUNC9(mesh);
    FUNC16(size == 3, "Wrong size %u returned, expected 3\n", size);

    for (i = 0; i < size; i++)
    {
        D3DVALUE red, green, blue, power;
        D3DCOLOR color;
        unsigned vertex_count, face_count, vertex_per_face;
        DWORD face_data_size;

        hr = FUNC7(mesh, i, &vertex_count, &face_count, &vertex_per_face, &face_data_size, NULL);
        FUNC16(hr == D3DRM_OK, "Group %d: IDirect3DRMMesh_GetGroup returned %x\n", i, hr);
        FUNC16(vertex_count == groups[i].vertex_count, "Group %d: Wrong vertex count %d, expected %d\n", i, vertex_count, groups[i].vertex_count);
        FUNC16(face_count == groups[i].face_count, "Group %d: Wrong face count %d; expected %d\n", i, face_count, groups[i].face_count);
        FUNC16(vertex_per_face == groups[i].vertex_per_face, "Group %d: Wrong vertex per face %d, expected %d\n", i, vertex_per_face, groups[i].vertex_per_face);
        FUNC16(face_data_size == groups[i].face_data_size, "Group %d: Wrong face data size %d, expected %d\n", i, face_data_size, groups[i].face_data_size);

        color = FUNC8(mesh, i);
        FUNC16(color == groups[i].color, "Group %d: Wrong color %x, expected %x\n", i, color, groups[i].color);

        hr = FUNC10(mesh, i, &material);
        FUNC16(hr == D3DRM_OK, "Group %d: IDirect3DRMMesh_GetGroupMaterial returned %x\n", i, hr);
        FUNC16(material != NULL, "Group %d: No material\n", i);
        power = FUNC2(material);
        FUNC16(power == groups[i].power, "Group %d: Wrong power %f, expected %f\n", i, power,  groups[i].power);
        hr = FUNC3(material, &red, &green, &blue);
        FUNC16(hr == D3DRM_OK, "Group %d: IDirect3DRMMaterial_GetSpecular returned %x\n", i, hr);
        FUNC16(red == groups[i].specular[0], "Group %d: Wrong specular red %f, expected %f\n", i, red, groups[i].specular[0]);
        FUNC16(green == groups[i].specular[1], "Group %d: Wrong specular green %f, pD3DRMexpected %f\n", i, green, groups[i].specular[1]);
        FUNC16(blue == groups[i].specular[2], "Group %d: Wrong specular blue %f, expected %f\n", i, blue, groups[i].specular[2]);
        hr = FUNC1(material, &red, &green, &blue);
        FUNC16(hr == D3DRM_OK, "Group %d: IDirect3DRMMaterial_GetEmissive returned %x\n", i, hr);
        FUNC16(red == groups[i].emissive[0], "Group %d: Wrong emissive red %f, expected %f\n", i, red, groups[i].emissive[0]);
        FUNC16(green == groups[i].emissive[1], "Group %d: Wrong emissive green %f, expected %f\n", i, green, groups[i].emissive[1]);
        FUNC16(blue == groups[i].emissive[2], "Group %d: Wrong emissive blue %f, expected %f\n", i, blue, groups[i].emissive[2]);

        hr = FUNC11(mesh, i, &texture);
        FUNC16(hr == D3DRM_OK, "Group %d: IDirect3DRMMesh_GetGroupTexture returned %x\n", i, hr);
        FUNC16(!texture, "Group %d: Unexpected texture\n", i);

        if (material)
            FUNC4(material);
        if (texture)
            FUNC13(texture);
    }

    FUNC12(mesh);
    FUNC6(mesh_builder);
    FUNC15(d3drm);
}