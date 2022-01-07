
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHYSDEV ;
typedef int INT ;
typedef int FLOAT ;
typedef int DWORD ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL pathdrv_AngleArc( PHYSDEV dev, INT x, INT y, DWORD radius, FLOAT eStartAngle, FLOAT eSweepAngle)
{
    DPRINT("pathdrv_AngleArc dev %p\n",dev);
    return TRUE;
}
