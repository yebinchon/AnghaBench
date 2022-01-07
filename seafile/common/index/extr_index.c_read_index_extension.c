
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;



 int g_critical (char*,unsigned int) ;
 int read_modifiers (struct index_state*,void*,unsigned int) ;

__attribute__((used)) static int read_index_extension(struct index_state *istate,
                                unsigned int ext, void *data, unsigned int sz)
{
    switch (ext) {
    case 128:
        return read_modifiers (istate, data, sz);
    default:
        g_critical("unknown extension %u.\n", ext);
        break;
    }
    return 0;
}
