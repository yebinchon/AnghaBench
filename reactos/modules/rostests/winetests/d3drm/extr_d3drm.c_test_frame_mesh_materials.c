
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {unsigned int vertex_count; unsigned int face_count; unsigned int vertex_per_face; int * emissive; int * specular; int power; int color; int face_data_size; } ;
struct TYPE_4__ {int dSize; int lpMemory; } ;
typedef int IDirect3DRMTexture ;
typedef int IDirect3DRMMesh ;
typedef int IDirect3DRMMaterial ;
typedef int IDirect3DRM ;
typedef int HRESULT ;
typedef int GUID ;
typedef int DWORD ;
typedef int D3DVALUE ;
typedef TYPE_1__ D3DRMLOADMEMORY ;
typedef int D3DCOLOR ;


 int D3DRMLOAD_FROMMEMORY ;
 int D3DRM_OK ;
 int Direct3DRMCreate (int **) ;
 int IDirect3DRMMaterial_GetEmissive (int *,int *,int *,int *) ;
 int IDirect3DRMMaterial_GetPower (int *) ;
 int IDirect3DRMMaterial_GetSpecular (int *,int *,int *,int *) ;
 int IDirect3DRMMaterial_Release (int *) ;
 int IDirect3DRMMeshBuilder_CreateMesh (int ,int **) ;
 int IDirect3DRMMeshBuilder_Release (int ) ;
 int IDirect3DRMMesh_GetGroup (int *,int,unsigned int*,unsigned int*,unsigned int*,int *,int *) ;
 int IDirect3DRMMesh_GetGroupColor (int *,int) ;
 int IDirect3DRMMesh_GetGroupCount (int *) ;
 int IDirect3DRMMesh_GetGroupMaterial (int *,int,int **) ;
 int IDirect3DRMMesh_GetGroupTexture (int *,int,int **) ;
 int IDirect3DRMMesh_Release (int *) ;
 int IDirect3DRMTexture_Release (int *) ;
 int IDirect3DRM_Load (int *,TYPE_1__*,int *,int **,int,int ,int ,void*,int *,int *,int *) ;
 int IDirect3DRM_Release (int *) ;
 int const IID_IDirect3DRMFrame ;
 int data_frame_mesh_materials ;
 TYPE_2__* groups ;
 int mesh_builder ;
 int object_load_callback_frame ;
 int ok (int,char*,int,...) ;
 int strlen (int ) ;

__attribute__((used)) static void test_frame_mesh_materials(void)
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

    hr = Direct3DRMCreate(&d3drm);
    ok(hr == D3DRM_OK, "Direct3DRMCreate returned %x\n", hr);

    info.lpMemory = data_frame_mesh_materials;
    info.dSize = strlen(data_frame_mesh_materials);
    hr = IDirect3DRM_Load(d3drm, &info, ((void*)0), (GUID**)req_refiids, 1, D3DRMLOAD_FROMMEMORY, object_load_callback_frame, (void*)0xdeadbeef, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == D3DRM_OK, "Cannot load data (hr = %x)\n", hr);

    hr = IDirect3DRMMeshBuilder_CreateMesh(mesh_builder, &mesh);
    ok(hr == D3DRM_OK, "IDirect3DRMMeshBuilder_CreateMesh returned %x\n", hr);

    size = IDirect3DRMMesh_GetGroupCount(mesh);
    ok(size == 3, "Wrong size %u returned, expected 3\n", size);

    for (i = 0; i < size; i++)
    {
        D3DVALUE red, green, blue, power;
        D3DCOLOR color;
        unsigned vertex_count, face_count, vertex_per_face;
        DWORD face_data_size;

        hr = IDirect3DRMMesh_GetGroup(mesh, i, &vertex_count, &face_count, &vertex_per_face, &face_data_size, ((void*)0));
        ok(hr == D3DRM_OK, "Group %d: IDirect3DRMMesh_GetGroup returned %x\n", i, hr);
        ok(vertex_count == groups[i].vertex_count, "Group %d: Wrong vertex count %d, expected %d\n", i, vertex_count, groups[i].vertex_count);
        ok(face_count == groups[i].face_count, "Group %d: Wrong face count %d; expected %d\n", i, face_count, groups[i].face_count);
        ok(vertex_per_face == groups[i].vertex_per_face, "Group %d: Wrong vertex per face %d, expected %d\n", i, vertex_per_face, groups[i].vertex_per_face);
        ok(face_data_size == groups[i].face_data_size, "Group %d: Wrong face data size %d, expected %d\n", i, face_data_size, groups[i].face_data_size);

        color = IDirect3DRMMesh_GetGroupColor(mesh, i);
        ok(color == groups[i].color, "Group %d: Wrong color %x, expected %x\n", i, color, groups[i].color);

        hr = IDirect3DRMMesh_GetGroupMaterial(mesh, i, &material);
        ok(hr == D3DRM_OK, "Group %d: IDirect3DRMMesh_GetGroupMaterial returned %x\n", i, hr);
        ok(material != ((void*)0), "Group %d: No material\n", i);
        power = IDirect3DRMMaterial_GetPower(material);
        ok(power == groups[i].power, "Group %d: Wrong power %f, expected %f\n", i, power, groups[i].power);
        hr = IDirect3DRMMaterial_GetSpecular(material, &red, &green, &blue);
        ok(hr == D3DRM_OK, "Group %d: IDirect3DRMMaterial_GetSpecular returned %x\n", i, hr);
        ok(red == groups[i].specular[0], "Group %d: Wrong specular red %f, expected %f\n", i, red, groups[i].specular[0]);
        ok(green == groups[i].specular[1], "Group %d: Wrong specular green %f, pD3DRMexpected %f\n", i, green, groups[i].specular[1]);
        ok(blue == groups[i].specular[2], "Group %d: Wrong specular blue %f, expected %f\n", i, blue, groups[i].specular[2]);
        hr = IDirect3DRMMaterial_GetEmissive(material, &red, &green, &blue);
        ok(hr == D3DRM_OK, "Group %d: IDirect3DRMMaterial_GetEmissive returned %x\n", i, hr);
        ok(red == groups[i].emissive[0], "Group %d: Wrong emissive red %f, expected %f\n", i, red, groups[i].emissive[0]);
        ok(green == groups[i].emissive[1], "Group %d: Wrong emissive green %f, expected %f\n", i, green, groups[i].emissive[1]);
        ok(blue == groups[i].emissive[2], "Group %d: Wrong emissive blue %f, expected %f\n", i, blue, groups[i].emissive[2]);

        hr = IDirect3DRMMesh_GetGroupTexture(mesh, i, &texture);
        ok(hr == D3DRM_OK, "Group %d: IDirect3DRMMesh_GetGroupTexture returned %x\n", i, hr);
        ok(!texture, "Group %d: Unexpected texture\n", i);

        if (material)
            IDirect3DRMMaterial_Release(material);
        if (texture)
            IDirect3DRMTexture_Release(texture);
    }

    IDirect3DRMMesh_Release(mesh);
    IDirect3DRMMeshBuilder_Release(mesh_builder);
    IDirect3DRM_Release(d3drm);
}
