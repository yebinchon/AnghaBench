
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ddsd ;
struct TYPE_5__ {int dwCaps; } ;
struct TYPE_6__ {int dwSize; TYPE_1__ ddsCaps; int dwFlags; } ;
typedef int LPVOID ;
typedef int IDirectDraw ;
typedef scalar_t__ HRESULT ;
typedef TYPE_2__ DDSURFACEDESC2 ;


 int DDSCAPS_PRIMARYSURFACE ;
 int DDSCL_NORMAL ;
 int DDSD_CAPS ;
 scalar_t__ DD_OK ;
 scalar_t__ DirectDrawCreate (int *,int **,int *) ;
 int FALSE ;
 int GetDesktopWindow () ;
 scalar_t__ IDirectDraw7_CreateSurface (scalar_t__,TYPE_2__*,scalar_t__*,int *) ;
 int IDirectDraw7_Release (scalar_t__) ;
 scalar_t__ IDirectDraw7_SetCooperativeLevel (scalar_t__,int ,int ) ;
 int IDirectDrawSurface7_Release (scalar_t__) ;
 scalar_t__ IDirectDraw_QueryInterface (int *,int *,int *) ;
 int IDirectDraw_Release (int *) ;
 int IID_IDirectDraw7 ;
 int TRUE ;
 int ZeroMemory (TYPE_2__*,int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pdd7 ;
 scalar_t__ pdds7 ;

__attribute__((used)) static int create_directdraw(void)
{
    HRESULT hr;
    IDirectDraw* pdd = ((void*)0);
    DDSURFACEDESC2 ddsd;

    hr = DirectDrawCreate(((void*)0), &pdd, ((void*)0));
    ok(hr==DD_OK, "DirectDrawCreate returned: %x\n", hr);
    if (hr != DD_OK)
       goto error;

    hr = IDirectDraw_QueryInterface(pdd, &IID_IDirectDraw7, (LPVOID*)&pdd7);
    ok(hr==DD_OK, "QueryInterface returned: %x\n", hr);
    if (hr != DD_OK) goto error;

    hr = IDirectDraw7_SetCooperativeLevel(pdd7, GetDesktopWindow(), DDSCL_NORMAL);
    ok(hr==DD_OK, "SetCooperativeLevel returned: %x\n", hr);

    ZeroMemory(&ddsd, sizeof(ddsd));
    ddsd.dwSize = sizeof(ddsd);
    ddsd.dwFlags = DDSD_CAPS;
    ddsd.ddsCaps.dwCaps = DDSCAPS_PRIMARYSURFACE;
    hr = IDirectDraw7_CreateSurface(pdd7, &ddsd, &pdds7, ((void*)0));
    ok(hr==DD_OK, "CreateSurface returned: %x\n", hr);

    return TRUE;

error:
    if (pdds7)
        IDirectDrawSurface7_Release(pdds7);
    if (pdd7)
        IDirectDraw7_Release(pdd7);
    if (pdd)
        IDirectDraw_Release(pdd);

    return FALSE;
}
