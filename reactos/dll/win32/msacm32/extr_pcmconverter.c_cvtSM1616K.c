
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M16 (int ,int ) ;
 int R16 (unsigned char const*) ;
 int TRACE (char*,unsigned char const*,int,unsigned char*) ;
 int W16 (unsigned char*,int ) ;

__attribute__((used)) static void cvtSM1616K(const unsigned char* src, int ns, unsigned char* dst)
{
    TRACE("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
 W16(dst, M16(R16(src),R16(src+2))); dst += 2;
 src += 4;
    }
}
