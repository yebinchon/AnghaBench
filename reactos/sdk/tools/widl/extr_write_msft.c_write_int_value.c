
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** typelib_segment_data; } ;
typedef TYPE_1__ msft_typelib_t ;


 size_t MSFT_SEG_CUSTDATA ;
 int ctl2_alloc_segment (TYPE_1__*,size_t,int,int ) ;
 unsigned int get_ulong_val (int,int) ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static void write_int_value(msft_typelib_t *typelib, int *out, int vt, int value)
{
    const unsigned int lv = get_ulong_val(value, vt);
    if ((lv & 0x3ffffff) == lv) {
        *out = 0x80000000;
        *out |= vt << 26;
        *out |= lv;
    } else {
        int offset = ctl2_alloc_segment(typelib, MSFT_SEG_CUSTDATA, 8, 0);
        *((unsigned short *)&typelib->typelib_segment_data[MSFT_SEG_CUSTDATA][offset]) = vt;
        memcpy(&typelib->typelib_segment_data[MSFT_SEG_CUSTDATA][offset+2], &value, 4);
        *((unsigned short *)&typelib->typelib_segment_data[MSFT_SEG_CUSTDATA][offset+6]) = 0x5757;
        *out = offset;
    }
}
