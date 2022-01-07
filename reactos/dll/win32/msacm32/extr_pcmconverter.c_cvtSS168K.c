
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* C168 (int ) ;
 int R16 (unsigned char const*) ;
 int TRACE (char*,unsigned char const*,int,unsigned char*) ;

__attribute__((used)) static void cvtSS168K(const unsigned char* src, int ns, unsigned char* dst)
{
    TRACE("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
 *dst++ = C168(R16(src)); src += 2;
 *dst++ = C168(R16(src)); src += 2;
    }
}
