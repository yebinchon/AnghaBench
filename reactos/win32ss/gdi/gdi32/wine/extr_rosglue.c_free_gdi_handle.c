
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int HGDIOBJ ;


 int GdiDeleteClientObj (int ) ;

PVOID
free_gdi_handle(HGDIOBJ hobj)
{

    return GdiDeleteClientObj(hobj);
}
