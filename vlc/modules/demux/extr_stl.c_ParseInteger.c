
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tmp ;


 int assert (int) ;
 int memcpy (char*,int *,size_t) ;
 size_t strtol (char*,int *,int) ;

__attribute__((used)) static size_t ParseInteger(uint8_t *data, size_t size)
{
    char tmp[16];
    assert(size < sizeof(tmp));
    memcpy(tmp, data, size);
    tmp[size] = '\0';

    return strtol(tmp, ((void*)0), 10);
}
