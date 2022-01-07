
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ PathIsRelativeW (int *) ;
 int TRUE ;

__attribute__((used)) static BOOL msi_dialog_verify_path( LPWSTR path )
{
    if ( !path[0] )
        return FALSE;

    if ( PathIsRelativeW( path ) )
        return FALSE;

    return TRUE;
}
