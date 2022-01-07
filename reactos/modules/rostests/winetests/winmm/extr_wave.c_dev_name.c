
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WAVE_MAPPER ;
 int sprintf (char*,char*,int) ;

const char * dev_name(int device)
{
    static char name[16];
    if (device == WAVE_MAPPER)
        return "WAVE_MAPPER";
    sprintf(name, "%d", device);
    return name;
}
