
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C816 (int ) ;
 int TRACE (char*,unsigned char const*,int,unsigned char*) ;
 int W16 (unsigned char*,int ) ;

__attribute__((used)) static void cvtMM816K(const unsigned char* src, int ns, unsigned char* dst)
{
    TRACE("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
 W16(dst, C816(*src++)); dst += 2;
    }
}
