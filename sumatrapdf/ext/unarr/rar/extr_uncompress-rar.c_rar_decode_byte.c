
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ar_archive_rar ;


 scalar_t__ br_bits (int *,int) ;
 int br_check (int *,int) ;

__attribute__((used)) static bool rar_decode_byte(ar_archive_rar *rar, uint8_t *byte)
{
    if (!br_check(rar, 8))
        return 0;
    *byte = (uint8_t)br_bits(rar, 8);
    return 1;
}
