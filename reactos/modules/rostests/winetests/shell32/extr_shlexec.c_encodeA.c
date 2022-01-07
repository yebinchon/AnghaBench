
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int encoded ;


 int assert (int ) ;
 int fprintf (int ,char*) ;
 int sprintf (char*,char*,unsigned char) ;
 int stderr ;
 int strlen (char const*) ;

__attribute__((used)) static const char* encodeA(const char* str)
{
    static char encoded[2*1024+1];
    char* ptr;
    size_t len,i;

    if (!str) return "";
    len = strlen(str) + 1;
    if (len >= sizeof(encoded)/2)
    {
        fprintf(stderr, "string is too long!\n");
        assert(0);
    }
    ptr = encoded;
    for (i = 0; i < len; i++)
        sprintf(&ptr[i * 2], "%02x", (unsigned char)str[i]);
    ptr[2 * len] = '\0';
    return ptr;
}
