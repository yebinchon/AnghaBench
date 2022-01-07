
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int free (char*) ;
 int msg_Warn (int *,char*,unsigned int,char) ;
 scalar_t__ unlikely (int) ;
 unsigned int var_InheritInteger (int *,char*) ;
 char* var_InheritString (int *,char*) ;

__attribute__((used)) static char var_InheritPolarization (vlc_object_t *obj)
{
    char pol;
    char *polstr = var_InheritString (obj, "dvb-polarization");
    if (polstr != ((void*)0))
    {
        pol = *polstr;
        free (polstr);
        if (unlikely(pol >= 'a' && pol <= 'z'))
            pol -= 'a' - 'A';
        return pol;
    }


    unsigned voltage = var_InheritInteger (obj, "dvb-voltage");
    switch (voltage)
    {
        case 13: pol = 'V'; break;
        case 18: pol = 'H'; break;
        default: return 0;
    }

    msg_Warn (obj, "\"voltage=%u\" option is obsolete. "
                   "Use \"polarization=%c\" instead.", voltage, pol);
    return pol;
}
