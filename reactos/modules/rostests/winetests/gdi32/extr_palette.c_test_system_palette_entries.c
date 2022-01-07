
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMETAFILE ;
typedef int HDC ;


 int CloseMetaFile (int ) ;
 int CreateMetaFileA (int *) ;
 int DeleteMetaFile (int ) ;
 int GetDC (int ) ;
 int GetDeviceCaps (int ,int ) ;
 int RASTERCAPS ;
 int RC_PALETTE ;
 int ReleaseDC (int ,int ) ;
 int check_system_palette_entries (int ) ;
 int skip (char*) ;

__attribute__((used)) static void test_system_palette_entries(void)
{
    HDC hdc;
    HDC metafile_dc;
    HMETAFILE metafile;

    hdc = GetDC(0);

    if (!(GetDeviceCaps( hdc, RASTERCAPS ) & RC_PALETTE))
    {
        check_system_palette_entries(hdc);
    }
    else
    {
        skip( "device is palette-based, skipping test\n" );
    }

    ReleaseDC( 0, hdc );

    metafile_dc = CreateMetaFileA(((void*)0));

    check_system_palette_entries(metafile_dc);

    metafile = CloseMetaFile(metafile_dc);
    DeleteMetaFile(metafile);
}
