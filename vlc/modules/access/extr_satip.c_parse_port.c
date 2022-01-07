
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int UINT16_MAX ;
 int VLC_EBADVAR ;
 int atoi (char*) ;

__attribute__((used)) static int parse_port(char *str, uint16_t *port)
{
    int p = atoi(str);
    if (p < 0 || p > UINT16_MAX)
        return VLC_EBADVAR;

    *port = p;

    return 0;
}
