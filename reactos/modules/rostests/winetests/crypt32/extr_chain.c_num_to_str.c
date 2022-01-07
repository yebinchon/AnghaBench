
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char *num_to_str(WORD num)
{
    static char buf[6];

    sprintf(buf, "#%04X", num);
    return buf;
}
