
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_physdev {int dummy; } ;
typedef int PHYSDEV ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct path_physdev*) ;
 int TRUE ;
 struct path_physdev* get_path_physdev (int ) ;

__attribute__((used)) static BOOL pathdrv_DeleteDC( PHYSDEV dev )
{
    struct path_physdev *physdev = get_path_physdev( dev );
    DPRINT("pathdrv_DeleteDC dev %p\n",dev);
    HeapFree( GetProcessHeap(), 0, physdev );
    return TRUE;
}
