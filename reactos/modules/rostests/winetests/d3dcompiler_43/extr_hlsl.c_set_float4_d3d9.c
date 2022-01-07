
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; float z; float w; } ;
typedef int IDirect3DDevice9 ;
typedef int ID3DXConstantTable ;
typedef TYPE_1__ D3DXVECTOR4 ;


 int ID3DXConstantTable_SetVector (int *,int *,char const*,TYPE_1__*) ;

__attribute__((used)) static void set_float4_d3d9(IDirect3DDevice9 *device, ID3DXConstantTable *constants, const char *name,
        float x, float y, float z, float w)
{
    D3DXVECTOR4 vector;
    vector.x = x;
    vector.y = y;
    vector.z = z;
    vector.w = w;
    ID3DXConstantTable_SetVector(constants, device, name, &vector);
}
