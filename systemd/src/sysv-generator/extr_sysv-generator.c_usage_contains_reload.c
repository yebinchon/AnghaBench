
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasestr (char const*,char*) ;

__attribute__((used)) static bool usage_contains_reload(const char *line) {
        return (strcasestr(line, "{reload|") ||
                strcasestr(line, "{reload}") ||
                strcasestr(line, "{reload\"") ||
                strcasestr(line, "|reload|") ||
                strcasestr(line, "|reload}") ||
                strcasestr(line, "|reload\""));
}
