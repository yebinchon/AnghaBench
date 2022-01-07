
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ByteReader {int rar; } ;
typedef int Byte ;


 scalar_t__ br_bits (int ,int) ;
 scalar_t__ br_check (int ,int) ;

__attribute__((used)) static Byte ByteIn_Read(void *p)
{
    struct ByteReader *self = p;
    return br_check(self->rar, 8) ? (Byte)br_bits(self->rar, 8) : 0xFF;
}
