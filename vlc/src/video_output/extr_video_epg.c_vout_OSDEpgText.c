
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int subpicture_region_t ;


 int vout_OSDSegment (char const*,int,int ) ;
 int * vout_OSDTextRegion (int ,int,int) ;

__attribute__((used)) static subpicture_region_t * vout_OSDEpgText(const char *text,
                                             int x, int y,
                                             int size, uint32_t color)
{
    return vout_OSDTextRegion(vout_OSDSegment(text, size, color), x, y);
}
