
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int long_illegals ;
 scalar_t__ wcschr (int ,int ) ;

BOOLEAN
vfatIsLongIllegal(
    WCHAR c)
{
    return wcschr(long_illegals, c) ? TRUE : FALSE;
}
