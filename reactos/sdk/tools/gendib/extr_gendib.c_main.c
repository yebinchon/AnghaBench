
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DestBpp ;


 int Generate (char*,unsigned int) ;

int
main(int argc, char *argv[])
{
    unsigned Index;
    static unsigned DestBpp[] =
    { 8, 16, 32 };

    if (argc < 2)
        return 0;

    for (Index = 0; Index < sizeof(DestBpp) / sizeof(DestBpp[0]); Index++)
    {
        Generate(argv[1], DestBpp[Index]);
    }

    return 0;
}
