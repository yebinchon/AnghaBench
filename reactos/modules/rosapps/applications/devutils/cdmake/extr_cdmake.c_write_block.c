
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int write_byte (int ) ;

__attribute__((used)) static void write_block(unsigned count, BYTE value)
{
    while (count != 0)
    {
        write_byte(value);
        count--;
    }
}
