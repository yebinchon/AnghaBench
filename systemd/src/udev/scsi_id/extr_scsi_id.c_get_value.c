
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 char* strsep (char**,char const*) ;

__attribute__((used)) static char *get_value(char **buffer) {
        static const char *quote_string = "\"\n";
        static const char *comma_string = ",\n";
        char *val;
        const char *end;

        if (**buffer == '"') {



                (*buffer)++;
                end = quote_string;
        } else {
                end = comma_string;
        }
        val = strsep(buffer, end);
        if (val && end == quote_string)



                (*buffer)++;

        while (isspace(**buffer))
                (*buffer)++;

        return val;
}
