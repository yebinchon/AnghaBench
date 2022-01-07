
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C816 (unsigned char const) ;
 short M16 (int ,int ) ;
 int TRACE (char*,unsigned char const*,int,unsigned char*) ;
 int W16 (unsigned char*,short) ;

__attribute__((used)) static void cvtSM816K(const unsigned char* src, int ns, unsigned char* dst)
{
    short v;
    TRACE("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
 v = M16(C816(src[0]), C816(src[1]));
 src += 2;
 W16(dst, v); dst += 2;
    }
}
