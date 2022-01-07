
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int COLORREF ;
typedef int BYTE ;


 int GetBValue (int ) ;
 int GetGValue (int ) ;
 int GetRValue (int ) ;
 int RGB (int ,int ,int ) ;
 int aa_comp (int ,int ,int ) ;

__attribute__((used)) static inline COLORREF aa_colorref( COLORREF dst, COLORREF text, BYTE glyph )
{
    COLORREF ret;

    ret = RGB( aa_comp( GetRValue(dst), GetRValue(text), glyph ),
               aa_comp( GetGValue(dst), GetGValue(text), glyph ),
               aa_comp( GetBValue(dst), GetBValue(text), glyph ) );
    return ret;
}
