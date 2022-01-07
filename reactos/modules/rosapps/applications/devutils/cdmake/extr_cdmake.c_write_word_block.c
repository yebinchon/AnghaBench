
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int write_big_endian_word (int ) ;

__attribute__((used)) static void write_word_block(unsigned count, WORD value)
{
    while (count != 0)
    {
        write_big_endian_word(value);
        count--;
    }
}
