
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINTN ;
typedef char CHAR8 ;


 scalar_t__ strchra (char*,char) ;

__attribute__((used)) static CHAR8 *line_get_key_value(
                CHAR8 *content,
                CHAR8 *sep,
                UINTN *pos,
                CHAR8 **key_ret,
                CHAR8 **value_ret) {

        CHAR8 *line;
        UINTN linelen;
        CHAR8 *value;

skip:
        line = content + *pos;
        if (*line == '\0')
                return ((void*)0);

        linelen = 0;
        while (line[linelen] && !strchra((CHAR8 *)"\n\r", line[linelen]))
               linelen++;


        *pos += linelen;
        if (content[*pos])
                (*pos)++;


        if (linelen == 0)
                goto skip;


        line[linelen] = '\0';


        while (strchra((CHAR8 *)" \t", *line)) {
                line++;
                linelen--;
        }


        while (linelen > 0 && strchra((CHAR8 *)" \t", line[linelen-1]))
                linelen--;
        line[linelen] = '\0';

        if (*line == '#')
                goto skip;


        value = line;
        while (*value && !strchra(sep, *value))
                value++;
        if (*value == '\0')
                goto skip;
        *value = '\0';
        value++;
        while (*value && strchra(sep, *value))
                value++;


        if (value[0] == '"' && line[linelen-1] == '"') {
                value++;
                line[linelen-1] = '\0';
        }

        *key_ret = line;
        *value_ret = value;
        return line;
}
