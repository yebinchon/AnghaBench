
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCITEMIDLIST ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ ILIsEqual (int ,int ) ;
 scalar_t__ ILIsParent (int ,int ,scalar_t__) ;
 int TRACE (char*,int ,int ,scalar_t__) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL should_notify( LPCITEMIDLIST changed, LPCITEMIDLIST watched, BOOL sub )
{
    TRACE("%p %p %d\n", changed, watched, sub );
    if ( !watched )
        return FALSE;
    if (ILIsEqual( watched, changed ) )
        return TRUE;
    if( sub && ILIsParent( watched, changed, FALSE ) )
        return TRUE;
    return FALSE;
}
