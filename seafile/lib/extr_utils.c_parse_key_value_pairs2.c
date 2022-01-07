
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* KeyValueFunc2 ) (void*,char*,char*) ;


 scalar_t__ FALSE ;
 int g_warning (char*,char*) ;

void parse_key_value_pairs2 (char *string, KeyValueFunc2 func, void *data)
{
    char *line = string, *next, *space;
    char *key, *value;

    while (*line) {

        if (*line == '\n') {
            ++line;
            continue;
        }

        for (next = line; *next != '\n' && *next; ++next) ;
        *next = '\0';

        for (space = line; space < next && *space != ' '; ++space) ;
        if (*space != ' ') {
            g_warning ("Bad key value format: %s\n", line);
            return;
        }
        *space = '\0';
        key = line;
        value = space + 1;

        if (func(data, key, value) == FALSE)
            break;

        line = next + 1;
    }
}
