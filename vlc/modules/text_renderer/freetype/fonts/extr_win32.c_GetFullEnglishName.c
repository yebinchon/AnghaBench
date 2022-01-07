
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef int uint32_t ;
typedef scalar_t__ WCHAR ;
struct TYPE_3__ {int elfLogFont; } ;
typedef int * HFONT ;
typedef int * HDC ;
typedef int FT_UInt ;
typedef int FT_Byte ;
typedef TYPE_1__ ENUMLOGFONTEX ;


 int * CreateCompatibleDC (int *) ;
 int * CreateFontIndirect (int *) ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int GetFontData (int *,int const,int ,int *,int) ;
 scalar_t__ GetSfntNameString (int *,int,int,int,int,int,int **,int*) ;
 int SelectObject (int *,int *) ;
 scalar_t__ U16_AT (int *) ;
 int free (int *) ;
 int * malloc (int) ;
 int ntoh32 (int) ;
 scalar_t__* vlc_alloc (int,int) ;

__attribute__((used)) static WCHAR *GetFullEnglishName( const ENUMLOGFONTEX *lpelfe )
{

    HFONT hFont = ((void*)0);
    HDC hDc = ((void*)0);
    FT_Byte *p_table = ((void*)0);
    WCHAR *psz_result = ((void*)0);

    hFont = CreateFontIndirect( &lpelfe->elfLogFont );

    if( !hFont )
        return ((void*)0);

    hDc = CreateCompatibleDC( ((void*)0) );

    if( !hDc )
    {
        DeleteObject( hFont );
        return ((void*)0);
    }

    HFONT hOriginalFont = ( HFONT ) SelectObject( hDc, hFont );

    const uint32_t i_name_tag = ntoh32( ( uint32_t ) 'n' << 24
                                      | ( uint32_t ) 'a' << 16
                                      | ( uint32_t ) 'm' << 8
                                      | ( uint32_t ) 'e' << 0 );

    int i_size = GetFontData( hDc, i_name_tag, 0, 0, 0 );

    if( i_size <= 0 )
        goto done;

    p_table = malloc( i_size );

    if( !p_table )
        goto done;

    if( GetFontData( hDc, i_name_tag, 0, p_table, i_size ) <= 0 )
        goto done;

    FT_Byte *p_name = ((void*)0);
    FT_UInt i_name_length = 0;


    if( GetSfntNameString( p_table, i_size, 3, 1, 4, 0x409, &p_name, &i_name_length) )
        goto done;

    int i_length_in_wchars = i_name_length / 2;
    wchar_t *psz_name = vlc_alloc( i_length_in_wchars + 1, sizeof( *psz_name ) );

    if( !psz_name )
        goto done;

    for( int i = 0; i < i_length_in_wchars; ++i )
        psz_name[ i ] = U16_AT( p_name + i * 2 );
    psz_name[ i_length_in_wchars ] = 0;

    psz_result = psz_name;

done:
    free( p_table );
    SelectObject( hDc, hOriginalFont );
    DeleteObject( hFont );
    DeleteDC( hDc );

    return psz_result;
}
