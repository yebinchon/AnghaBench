
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ D3DSIO_END ;
 int trace (char*,...) ;

__attribute__((used)) static void dump_shader(DWORD *shader) {
    unsigned int i = 0, j = 0;
    do {
        trace("0x%08x ", shader[i]);
        j++;
        i++;
        if(j == 6) trace("\n");
    } while(shader[i - 1] != D3DSIO_END);
    if(j != 6) trace("\n");
}
