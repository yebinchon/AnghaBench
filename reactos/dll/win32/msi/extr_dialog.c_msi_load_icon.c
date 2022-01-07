
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIDATABASE ;
typedef int LPCWSTR ;
typedef int HICON ;
typedef int DWORD ;


 int IMAGE_ICON ;
 int LR_DEFAULTSIZE ;
 int LR_LOADFROMFILE ;
 int msi_load_image (int *,int ,int ,int,int,int) ;
 int msidbControlAttributesFixedSize ;
 int msidbControlAttributesIconSize16 ;
 int msidbControlAttributesIconSize32 ;

__attribute__((used)) static HICON msi_load_icon( MSIDATABASE *db, LPCWSTR text, UINT attributes )
{
    DWORD cx = 0, cy = 0, flags;

    flags = LR_LOADFROMFILE | LR_DEFAULTSIZE;
    if( attributes & msidbControlAttributesFixedSize )
    {
        flags &= ~LR_DEFAULTSIZE;
        if( attributes & msidbControlAttributesIconSize16 )
        {
            cx += 16;
            cy += 16;
        }
        if( attributes & msidbControlAttributesIconSize32 )
        {
            cx += 32;
            cy += 32;
        }

    }
    return msi_load_image( db, text, IMAGE_ICON, cx, cy, flags );
}
