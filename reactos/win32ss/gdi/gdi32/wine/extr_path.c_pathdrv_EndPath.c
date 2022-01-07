
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_physdev {int dummy; } ;
typedef int PHYSDEV ;
typedef int DC ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct path_physdev*) ;
 int TRUE ;
 struct path_physdev* get_path_physdev (int ) ;
 int * get_physdev_dc (int ) ;
 int path_driver ;
 int pop_dc_driver (int *,int *) ;

__attribute__((used)) static BOOL pathdrv_EndPath( PHYSDEV dev )
{
    struct path_physdev *physdev = get_path_physdev( dev );
    DC *dc = get_physdev_dc( dev );

    DPRINT("pathdrv_EndPath dev %p\n",dev);

    pop_dc_driver( dc, &path_driver );
    HeapFree( GetProcessHeap(), 0, physdev );

    return TRUE;
}
