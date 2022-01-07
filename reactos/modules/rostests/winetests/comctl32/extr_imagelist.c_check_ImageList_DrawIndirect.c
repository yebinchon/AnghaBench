
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int IMAGELISTDRAWPARAMS ;


 int colour_match (int,int) ;
 int ok (int ,char*,int,int,int) ;
 int pImageList_DrawIndirect (int *) ;

__attribute__((used)) static void check_ImageList_DrawIndirect(IMAGELISTDRAWPARAMS *ildp, UINT32 *bits,
                                         UINT32 expected, int line)
{
    bits[0] = 0x00FFFFFF;
    pImageList_DrawIndirect(ildp);
    ok(colour_match(bits[0], expected),
       "ImageList_DrawIndirect: Pixel %08X, Expected a close match to %08X from line %d\n",
       bits[0] & 0x00FFFFFF, expected, line);
}
