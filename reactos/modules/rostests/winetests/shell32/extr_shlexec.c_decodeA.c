
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoded ;


 int assert (int ) ;
 int decode_char (char const) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int strlen (char const*) ;

__attribute__((used)) static char* decodeA(const char* str)
{
    static char decoded[1024];
    char* ptr;
    size_t len,i;

    len = strlen(str) / 2;
    if (!len--) return ((void*)0);
    if (len >= sizeof(decoded))
    {
        fprintf(stderr, "string is too long!\n");
        assert(0);
    }
    ptr = decoded;
    for (i = 0; i < len; i++)
        ptr[i] = (decode_char(str[2 * i]) << 4) | decode_char(str[2 * i + 1]);
    ptr[len] = '\0';
    return ptr;
}
