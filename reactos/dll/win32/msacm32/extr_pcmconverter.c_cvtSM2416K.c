
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C2416 (int ) ;
 int M24 (int ,int ) ;
 int R24 (unsigned char const*) ;
 int TRACE (char*,unsigned char const*,int,unsigned char*) ;
 int W16 (unsigned char*,int ) ;

__attribute__((used)) static void cvtSM2416K(const unsigned char* src, int ns, unsigned char* dst)
{
    TRACE("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
 W16(dst, C2416(M24(R24(src), R24(src + 3))));
 dst += 2;
 src += 6;
    }
}
