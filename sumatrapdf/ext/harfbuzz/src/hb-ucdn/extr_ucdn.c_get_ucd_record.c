
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int UCDRecord ;


 int SHIFT1 ;
 int SHIFT2 ;
 int* index0 ;
 int* index1 ;
 int* index2 ;
 int const* ucd_records ;

__attribute__((used)) static const UCDRecord *get_ucd_record(uint32_t code)
{
    int index, offset;

    if (code >= 0x110000)
        index = 0;
    else {
        index = index0[code >> (SHIFT1+SHIFT2)] << SHIFT1;
        offset = (code >> SHIFT2) & ((1<<SHIFT1) - 1);
        index = index1[index + offset] << SHIFT2;
        offset = code & ((1<<SHIFT2) - 1);
        index = index2[index + offset];
    }

    return &ucd_records[index];
}
