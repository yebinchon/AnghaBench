
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; int len; } ;
typedef TYPE_1__ xmlstr_t ;
struct assembly_version {unsigned int major; unsigned int minor; unsigned int build; unsigned int revision; } ;
typedef char WCHAR ;
typedef int UNICODE_STRING ;
typedef int BOOL ;


 int DPRINT1 (char*,int *) ;
 int FALSE ;
 int TRUE ;
 int xmlstr2unicode (TYPE_1__ const*) ;

__attribute__((used)) static BOOL parse_version(const xmlstr_t *str, struct assembly_version *version)
{
    unsigned int ver[4];
    unsigned int pos;
    const WCHAR *curr;
    UNICODE_STRING strU;


    ver[0] = ver[1] = ver[2] = ver[3] = pos = 0;
    for (curr = str->ptr; curr < str->ptr + str->len; curr++)
    {
        if (*curr >= '0' && *curr <= '9')
        {
            ver[pos] = ver[pos] * 10 + *curr - '0';
            if (ver[pos] >= 0x10000) goto error;
        }
        else if (*curr == '.')
        {
            if (++pos >= 4) goto error;
        }
        else goto error;
    }
    version->major = ver[0];
    version->minor = ver[1];
    version->build = ver[2];
    version->revision = ver[3];
    return TRUE;

error:
    strU = xmlstr2unicode(str);
    DPRINT1( "Wrong version definition in manifest file (%wZ)\n", &strU );
    return FALSE;
}
