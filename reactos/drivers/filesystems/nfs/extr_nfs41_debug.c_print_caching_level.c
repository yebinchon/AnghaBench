
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PUNICODE_STRING ;


 int DbgP (char*,int ) ;

void print_caching_level(int on, ULONG flag, PUNICODE_STRING name)
{
    if (!on) return;
    switch(flag) {
        case 0:
            DbgP("enable_caching: DISABLE_CACHING %wZ\n", name);
            break;
        case 1:
            DbgP("enable_caching: ENABLE_READ_CACHING %wZ\n", name);
            break;
        case 2:
            DbgP("enable_caching: ENABLE_WRITE_CACHING %wZ\n", name);
            break;
        case 3:
            DbgP("enable_caching: ENABLE_READWRITE_CACHING %wZ\n", name);
            break;
    }
}
