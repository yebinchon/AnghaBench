
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int memcmp (int const*,int const*,int) ;
 int ok (int,char*) ;
 int sprintf (char*,char*,int const) ;
 int trace (char*,char*) ;

__attribute__((used)) static void test_output(const BYTE *output, int out_size, const BYTE *expect, int size)
{
    char buf[512], *ptr;
    int i;

    i = out_size == size && !memcmp(output, expect, size);
    ok(i, "Unexpected output\n");
    if(i)
        return;

    for(i=0, ptr=buf; i<out_size; i++)
        ptr += sprintf(ptr, "%x ", output[i]);
    trace("Got: %s\n", buf);
    for(i=0, ptr=buf; i<size; i++)
        ptr += sprintf(ptr, "%x ", expect[i]);
    trace("Exp: %s\n", buf);
}
