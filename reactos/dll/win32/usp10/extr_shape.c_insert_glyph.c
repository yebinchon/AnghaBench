
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int INT ;


 int UpdateClusters (int,int,int,int,int *) ;

__attribute__((used)) static void insert_glyph(WORD *pwGlyphs, INT *pcGlyphs, INT cChars, INT write_dir, WORD glyph, INT index, WORD *pwLogClust)
{
    int i;
    for (i = *pcGlyphs; i>=index; i--)
        pwGlyphs[i+1] = pwGlyphs[i];
    pwGlyphs[index] = glyph;
    *pcGlyphs = *pcGlyphs+1;
    if (write_dir < 0)
        UpdateClusters(index-3, 1, write_dir, cChars, pwLogClust);
    else
        UpdateClusters(index, 1, write_dir, cChars, pwLogClust);
}
