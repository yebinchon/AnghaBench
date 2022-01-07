
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwSize; scalar_t__ UnlockD3DBuffer; scalar_t__ LockD3DBuffer; scalar_t__ DestroyD3DBuffer; scalar_t__ CreateD3DBuffer; scalar_t__ CanCreateD3DBuffer; int dwFlags; } ;
typedef int DWORD ;
typedef TYPE_1__ DD_D3DBUFCALLBACKS ;


 int DDHAL_D3DBUFCB32_CANCREATED3DBUF ;
 int DDHAL_D3DBUFCB32_CREATED3DBUF ;
 int DDHAL_D3DBUFCB32_DESTROYD3DBUF ;
 int DDHAL_D3DBUFCB32_LOCKD3DBUF ;
 int DDHAL_D3DBUFCB32_UNLOCKD3DBUF ;
 int checkflag (int ,int ,char*) ;
 int endcheckflag (int ,char*) ;
 int printf (char*,...) ;

void
dump_D3dBufferCallbacks(DD_D3DBUFCALLBACKS *puD3dBufferCallbacks, char *text)
{
    int count = 0;
    DWORD flag = 0;

    printf("dumping the DD_D3DBUFCALLBACKS from %s\n",text);

    if (puD3dBufferCallbacks->dwSize == sizeof(DD_D3DBUFCALLBACKS))
    {
        printf(" puD3dBufferCallbacks->dwSize                                   : 0x%08lx\n",(long)puD3dBufferCallbacks->dwSize);
        printf(" puD3dBufferCallbacks->dwFlags                                  : ");


        count = 0;
        flag = puD3dBufferCallbacks->dwFlags;
        checkflag(flag,DDHAL_D3DBUFCB32_CANCREATED3DBUF,"DDHAL_D3DBUFCB32_CANCREATED3DBUF");
        checkflag(flag,DDHAL_D3DBUFCB32_CREATED3DBUF,"DDHAL_D3DBUFCB32_CREATED3DBUF");

        checkflag(flag,DDHAL_D3DBUFCB32_DESTROYD3DBUF,"DDHAL_D3DBUFCB32_DESTROYD3DBUF");

        checkflag(flag,DDHAL_D3DBUFCB32_LOCKD3DBUF,"DDHAL_D3DBUFCB32_LOCKD3DBUF");
        checkflag(flag,DDHAL_D3DBUFCB32_UNLOCKD3DBUF,"DDHAL_D3DBUFCB32_UNLOCKD3DBUF");
        endcheckflag(flag,"puD3dBufferCallbacks->dwFlags");

        printf(" puD3dBufferCallbacks->CanCreateD3DBuffer                       : 0x%08lx\n",(long)puD3dBufferCallbacks->CanCreateD3DBuffer);
        printf(" puD3dBufferCallbacks->CreateD3DBuffer                          : 0x%08lx\n",(long)puD3dBufferCallbacks->CreateD3DBuffer);
        printf(" puD3dBufferCallbacks->DestroyD3DBuffer                         : 0x%08lx\n",(long)puD3dBufferCallbacks->DestroyD3DBuffer);
        printf(" puD3dBufferCallbacks->LockD3DBuffer                            : 0x%08lx\n",(long)puD3dBufferCallbacks->LockD3DBuffer);
        printf(" puD3dBufferCallbacks->UnlockD3DBuffer                          : 0x%08lx\n",(long)puD3dBufferCallbacks->UnlockD3DBuffer);
    }
    else
    {
        printf("none puD3dBufferCallbacks from the driver 0x%08lx\n",puD3dBufferCallbacks->dwSize);
    }

}
