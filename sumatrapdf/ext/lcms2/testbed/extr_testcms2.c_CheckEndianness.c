
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int Die (char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckEndianness(void)
{
    cmsInt32Number BigEndian, IsOk;
    union {
        long l;
        char c[sizeof (long)];
    } u;

    u.l = 1;
    BigEndian = (u.c[sizeof (long) - 1] == 1);




    IsOk = !BigEndian;


    if (!IsOk) {
        Die("\nOOOPPSS! You have CMS_USE_BIG_ENDIAN toggle misconfigured!\n\n"
            "Please, edit lcms2mt.h and %s the CMS_USE_BIG_ENDIAN toggle.\n", BigEndian? "uncomment" : "comment");
        return 0;
    }

    return 1;
}
