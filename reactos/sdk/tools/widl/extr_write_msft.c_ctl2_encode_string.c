
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int ctl2_encode_string(
 const char *string,
 char **result)
{
    int length;
    static char converted_string[0x104];
    int offset;

    length = strlen(string);
    memcpy(converted_string + 2, string, length);





    converted_string[0] = length & 0xff;
    converted_string[1] = (length >> 8) & 0xff;


    if(length < 3) {
        for(offset = 0; offset < 4; offset++)
            converted_string[length + offset + 2] = 0x57;
        length += 4;
    }
    for (offset = (4 - (length + 2)) & 3; offset; offset--) converted_string[length + offset + 1] = 0x57;

    *result = converted_string;

    return (length + 5) & ~3;
}
