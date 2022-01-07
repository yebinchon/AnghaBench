
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef char* LPSTR ;



__attribute__((used)) static LPSTR get_temp_buffer(void)
{
    static UINT index = 0;
    static char buff[10][256];

    index = (index + 1) % 10;
    *buff[index] = 0;

    return buff[index];
}
