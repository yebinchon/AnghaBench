
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ memcmp (int const*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static bool FindSVGmarker(int *position, const uint8_t *data, const int size, const char *marker)
{
    for( int i = *position; i < size; i++)
    {
        if (memcmp(&data[i], marker, strlen(marker)) == 0)
        {
            *position = i;
            return 1;
        }
    }
    return 0;
}
