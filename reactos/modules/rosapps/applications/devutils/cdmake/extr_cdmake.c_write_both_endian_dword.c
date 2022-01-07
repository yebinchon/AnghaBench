
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int write_big_endian_dword (int ) ;
 int write_little_endian_dword (int ) ;

__attribute__((used)) static void write_both_endian_dword(DWORD x)
{
    write_little_endian_dword(x);
    write_big_endian_dword(x);
}
