
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filter_t ;
typedef int IDirect3DSurface9 ;
typedef int D3DSURFACE_DESC ;
typedef int D3DLOCKED_RECT ;


 int D3DLOCK_READONLY ;
 int FAILED (int ) ;
 int IDirect3DSurface9_GetDesc (int *,int *) ;
 int IDirect3DSurface9_LockRect (int *,int *,int *,int ) ;
 int msg_Err (int *,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool GetLock(filter_t *p_filter, IDirect3DSurface9 *d3d,
                    D3DLOCKED_RECT *p_lock, D3DSURFACE_DESC *p_desc)
{
    if (unlikely(FAILED( IDirect3DSurface9_GetDesc(d3d, p_desc))))
        return 0;


    if (FAILED(IDirect3DSurface9_LockRect(d3d, p_lock, ((void*)0), D3DLOCK_READONLY))) {
        msg_Err(p_filter, "Failed to lock surface");
        return 0;
    }

    return 1;
}
