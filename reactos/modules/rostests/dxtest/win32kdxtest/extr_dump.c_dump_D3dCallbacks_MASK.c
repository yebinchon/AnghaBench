#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dwSize; scalar_t__ dwReserved9; scalar_t__ dwReserved8; scalar_t__ dwReserved7; scalar_t__ dwReserved6; scalar_t__ dwReserved5; scalar_t__ dwReserved4; scalar_t__ dwReserved3; scalar_t__ dwReserved2; scalar_t__ dwReserved1; scalar_t__ dwReserved0; scalar_t__ dwReserved24; scalar_t__ dwReserved21; scalar_t__ dwReserved20; scalar_t__ dwReserved19; scalar_t__ dwReserved18; scalar_t__ dwReserved17; scalar_t__ dwReserved16; scalar_t__ dwReserved15; scalar_t__ dwReserved14; scalar_t__ dwReserved13; scalar_t__ dwReserved12; scalar_t__ TextureGetSurf; scalar_t__ TextureSwap; scalar_t__ TextureDestroy; scalar_t__ TextureCreate; scalar_t__ dwReserved; scalar_t__ dwReserved23; scalar_t__ dwReserved22; scalar_t__ dwReserved11; scalar_t__ dwReserved10; scalar_t__ SceneCapture; scalar_t__ ContextDestroyAll; scalar_t__ ContextDestroy; scalar_t__ ContextCreate; } ;
typedef  TYPE_1__ D3DNTHAL_CALLBACKS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(D3DNTHAL_CALLBACKS *puD3dCallbacks, char *text)
{
    FUNC0("dumping the D3DNTHAL_CALLBACKS from %s\n",text);
    if (puD3dCallbacks->dwSize ==  sizeof(D3DNTHAL_CALLBACKS))
    {
        FUNC0(" puD3dCallbacks->dwSize                                         : 0x%08lx\n",(long)puD3dCallbacks->dwSize);
        FUNC0(" puD3dCallbacks->ContextCreate                                  : 0x%08lx\n",(long)puD3dCallbacks->ContextCreate);
        FUNC0(" puD3dCallbacks->ContextDestroy                                 : 0x%08lx\n",(long)puD3dCallbacks->ContextDestroy);
        FUNC0(" puD3dCallbacks->ContextDestroyAll                              : 0x%08lx\n",(long)puD3dCallbacks->ContextDestroyAll);
        FUNC0(" puD3dCallbacks->SceneCapture                                   : 0x%08lx\n",(long)puD3dCallbacks->SceneCapture);
        FUNC0(" puD3dCallbacks->dwReserved10                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved10);
        FUNC0(" puD3dCallbacks->dwReserved11                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved11);
        FUNC0(" puD3dCallbacks->dwReserved22                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved22);
        FUNC0(" puD3dCallbacks->dwReserved23                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved23);
        FUNC0(" puD3dCallbacks->dwReserved                                     : 0x%08lx\n",(long)puD3dCallbacks->dwReserved);
        FUNC0(" puD3dCallbacks->TextureCreate                                  : 0x%08lx\n",(long)puD3dCallbacks->TextureCreate);
        FUNC0(" puD3dCallbacks->TextureDestroy                                 : 0x%08lx\n",(long)puD3dCallbacks->TextureDestroy);
        FUNC0(" puD3dCallbacks->TextureSwap                                    : 0x%08lx\n",(long)puD3dCallbacks->TextureSwap);
        FUNC0(" puD3dCallbacks->TextureGetSurf                                 : 0x%08lx\n",(long)puD3dCallbacks->TextureGetSurf);
        FUNC0(" puD3dCallbacks->dwReserved12                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved12);
        FUNC0(" puD3dCallbacks->dwReserved13                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved13);
        FUNC0(" puD3dCallbacks->dwReserved14                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved14);
        FUNC0(" puD3dCallbacks->dwReserved15                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved15);
        FUNC0(" puD3dCallbacks->dwReserved16                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved16);
        FUNC0(" puD3dCallbacks->dwReserved17                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved17);
        FUNC0(" puD3dCallbacks->dwReserved18                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved18);
        FUNC0(" puD3dCallbacks->dwReserved19                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved19);
        FUNC0(" puD3dCallbacks->dwReserved20                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved20);
        FUNC0(" puD3dCallbacks->dwReserved21                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved21);
        FUNC0(" puD3dCallbacks->dwReserved24                                   : 0x%08lx\n",(long)puD3dCallbacks->dwReserved24);
        FUNC0(" puD3dCallbacks->dwReserved0                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved0);
        FUNC0(" puD3dCallbacks->dwReserved1                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved1);
        FUNC0(" puD3dCallbacks->dwReserved2                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved2);
        FUNC0(" puD3dCallbacks->dwReserved3                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved3);
        FUNC0(" puD3dCallbacks->dwReserved4                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved4);
        FUNC0(" puD3dCallbacks->dwReserved5                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved5);
        FUNC0(" puD3dCallbacks->dwReserved6                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved6);
        FUNC0(" puD3dCallbacks->dwReserved7                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved7);
        FUNC0(" puD3dCallbacks->dwReserved8                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved8);
        FUNC0(" puD3dCallbacks->dwReserved9                                    : 0x%08lx\n",(long)puD3dCallbacks->dwReserved9);
    }
     else
    {
        FUNC0("none puD3dCallbacks from the driver 0x%08lx\n",puD3dCallbacks->dwSize);
    }
}