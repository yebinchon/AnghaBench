
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef scalar_t__ off64_t ;


 scalar_t__ INT32_MAX ;
 scalar_t__ INT32_MIN ;
 scalar_t__ _fseeki64 (void*,scalar_t__,int) ;
 scalar_t__ fseek (void*,long,int) ;
 scalar_t__ fseeko (void*,scalar_t__,int) ;

__attribute__((used)) static bool file_seek(void *data, off64_t offset, int origin)
{







    if (offset > INT32_MAX || offset < INT32_MIN)
        return 0;
    return fseek(data, (long)offset, origin) == 0;

}
