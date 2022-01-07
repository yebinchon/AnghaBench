
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOL_DOS ;
 int EOL_MAC ;
 int EOL_UNIX ;
 int* p_ffs ;

int
default_fileformat()
{
    switch (*p_ffs)
    {
 case 'm': return EOL_MAC;
 case 'd': return EOL_DOS;
    }
    return EOL_UNIX;
}
