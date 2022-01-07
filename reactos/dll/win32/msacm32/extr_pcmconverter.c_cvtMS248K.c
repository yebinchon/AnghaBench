
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char C248 (int ) ;
 int R24 (unsigned char const*) ;
 int TRACE (char*,unsigned char const*,int,unsigned char*) ;

__attribute__((used)) static void cvtMS248K(const unsigned char* src, int ns, unsigned char* dst)
{
    unsigned char v;
    TRACE("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
 v = C248(R24(src)); src += 3;
 *dst++ = v;
 *dst++ = v;
    }
}
