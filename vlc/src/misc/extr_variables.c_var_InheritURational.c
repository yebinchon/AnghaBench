
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (char*) ;
 unsigned int strtoul (char*,char**,int) ;
 char* var_InheritString (int *,char const*) ;
 int vlc_ureduce (unsigned int*,unsigned int*,unsigned int,unsigned int,int ) ;

int (var_InheritURational)(vlc_object_t *object,
                           unsigned *num, unsigned *den,
                           const char *var)
{
    char *str = var_InheritString(object, var);
    if (str == ((void*)0))
        goto error;

    char *sep;
    unsigned n = strtoul(str, &sep, 10);
    unsigned d;

    switch (*sep) {
        case '\0':

            d = 1;
            break;

        case ':':
        case '/':

            d = strtoul(sep + 1, &sep, 10);
            if (*sep != '\0')
                goto error;
            break;

        case '.': {

            unsigned char c;

            d = 1;
            while ((c = *(++sep)) != '\0') {
                c -= '0';

                if (c >= 10)
                    goto error;

                n = n * 10 + c;
                d *= 10;
            }
            break;
        }

        default:
            goto error;
    }

    free(str);

    if (n == 0) {
        *num = 0;
        *den = d ? 1 : 0;
    } else if (d == 0) {
        *num = 1;
        *den = 0;
    } else
        vlc_ureduce(num, den, n, d, 0);

    return VLC_SUCCESS;

error:
    free(str);
    *num = 0;
    *den = 0;
    return VLC_EGENERIC;
}
