
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE (char*,unsigned char const*,int,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static void cvtMM1616K(const unsigned char* src, int ns, unsigned char* dst)
{
    TRACE("(%p, %d, %p)\n", src, ns, dst);
    memcpy(dst, src, ns * 2);
}
