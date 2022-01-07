
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int BYTE ;


 int write_byte (int ) ;

__attribute__((used)) static void write_little_endian_word(WORD x)
{
    write_byte((BYTE)x);
    write_byte((BYTE)(x >> 8));
}
