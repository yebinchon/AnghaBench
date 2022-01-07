
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int nLen; int nBuffer; int * szData; } ;
typedef TYPE_1__ ME_String ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int ME_GetOptimalBuffer (int) ;
 int TRUE ;
 int assert (int) ;
 int * heap_realloc (int *,int) ;
 int memcpy (int *,int const*,int) ;
 int memmove (int *,int *,int) ;

BOOL ME_InsertString(ME_String *s, int ofs, const WCHAR *insert, int len)
{
    DWORD new_len = s->nLen + len + 1;
    WCHAR *new;

    assert( s->nBuffer );
    assert( ofs <= s->nLen );

    if( new_len > s->nBuffer )
    {
        s->nBuffer = ME_GetOptimalBuffer( new_len );
        new = heap_realloc( s->szData, s->nBuffer * sizeof(WCHAR) );
        if (!new) return FALSE;
        s->szData = new;
    }

    memmove( s->szData + ofs + len, s->szData + ofs, (s->nLen - ofs + 1) * sizeof(WCHAR) );
    memcpy( s->szData + ofs, insert, len * sizeof(WCHAR) );
    s->nLen += len;

    return TRUE;
}
