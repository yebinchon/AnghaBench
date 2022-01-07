
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE (char*,unsigned char const*,int,unsigned char*) ;

__attribute__((used)) static void cvtMS88K(const unsigned char* src, int ns, unsigned char* dst)
{
    TRACE("(%p, %d, %p)\n", src, ns, dst);

    while (ns--) {
 *dst++ = *src;
 *dst++ = *src++;
    }
}
