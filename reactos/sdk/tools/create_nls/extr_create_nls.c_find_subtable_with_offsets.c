
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 scalar_t__ memcmp (int *,int*,int) ;
 int memcpy (int *,int*,int) ;
 int number_of_subtables_with_offsets ;
 int printf (char*) ;
 int * subtables_with_offsets ;

__attribute__((used)) static WORD find_subtable_with_offsets(WORD *subtable)
{
    WORD index;

    for(index = 0; index < number_of_subtables_with_offsets; index++) {
        if(memcmp(&subtables_with_offsets[index * 16], subtable, 16 * sizeof(WORD)) == 0) {
            return index;
        }
    }

    if(number_of_subtables_with_offsets >= 4096) {
        printf("Could not add new subtable with offsets, storage is full\n");
        return 0;
    }

    memcpy(&subtables_with_offsets[number_of_subtables_with_offsets * 16], subtable, 16 * sizeof(WORD));
    number_of_subtables_with_offsets++;

    return index;
}
