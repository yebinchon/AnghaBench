
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int write_big_endian_word (int ) ;
 int write_little_endian_word (int ) ;

__attribute__((used)) static void write_both_endian_word(WORD x)
{
    write_little_endian_word(x);
    write_big_endian_word(x);
}
