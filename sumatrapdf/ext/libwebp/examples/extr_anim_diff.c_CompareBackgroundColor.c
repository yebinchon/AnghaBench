
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fprintf (int ,char*,int,int) ;
 int stderr ;

__attribute__((used)) static int CompareBackgroundColor(uint32_t bg1, uint32_t bg2, int premultiply) {
  if (premultiply) {
    const int alpha1 = (bg1 >> 24) & 0xff;
    const int alpha2 = (bg2 >> 24) & 0xff;
    if (alpha1 == 0 && alpha2 == 0) return 1;
  }
  if (bg1 != bg2) {
    fprintf(stderr, "Background color mismatch: 0x%08x vs 0x%08x\n",
            bg1, bg2);
    return 0;
  }
  return 1;
}
