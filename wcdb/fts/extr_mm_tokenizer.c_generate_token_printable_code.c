
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int UChar ;


 scalar_t__ malloc (int) ;
 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static char *generate_token_printable_code(const UChar *buf, int32_t length)
{
    char *out = (char *) malloc(length * 5 + 1);
    char *pc = out;
    if (!out)
        return "";

    while (length > 0) {
        snprintf(pc, 6, "%04hX ", *buf);
        length--;
        buf++;
        pc += 5;
    }

    return out;
}
