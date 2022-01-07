
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KEEPALIVE_MARGIN ;
 int __MIN (int ,unsigned int) ;
 int atoi (char*) ;
 int memcpy (char*,char*,int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static void parse_session(char *request_line, char *session, unsigned max, int *timeout) {
    char *state;
    char *tok;

    tok = strtok_r(request_line, ";", &state);
    if (tok == ((void*)0))
        return;
    memcpy(session, tok, __MIN(strlen(tok), max - 1));

    while ((tok = strtok_r(((void*)0), ";", &state)) != ((void*)0)) {
        if (strncmp(tok, "timeout=", 8) == 0) {
            *timeout = atoi(tok + 8);
            if (*timeout > 5)
                *timeout -= KEEPALIVE_MARGIN;
            else if (*timeout > 0)
                *timeout = 1;
        }
    }
}
