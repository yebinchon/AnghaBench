
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short C2416 (int ) ;
 int R24 (unsigned char const*) ;
 int TRACE (char*,unsigned char const*,int,unsigned char*) ;
 int W16 (unsigned char*,short) ;

__attribute__((used)) static void cvtMS2416K(const unsigned char* src, int ns, unsigned char* dst)
{
    short v;
    TRACE("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
 v = C2416(R24(src)); src += 3;
 W16(dst, v); dst += 2;
 W16(dst, v); dst += 2;
    }
}
