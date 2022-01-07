
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* key; char* val; } ;
typedef TYPE_1__ parsed_param_t ;


 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 char* strtok (char*,char const*) ;

__attribute__((used)) static int srt_url_parse_query(char *query, const char* delimiter,
        parsed_param_t *params, int max_params)
{
    int i = 0;
    char *token = ((void*)0);

    if (!query || *query == '\0')
        return -1;
    if (!params || max_params == 0)
        return 0;

    token = strtok( query, delimiter );
    while (token != ((void*)0) && i < max_params) {
        params[i].key = token;
        params[i].val = ((void*)0);
        if ((params[i].val = strchr( params[i].key, '=' )) != ((void*)0)) {
            size_t val_len = strlen( params[i].val );


            *(params[i].val) = '\0';


            if (val_len > 1) {
                params[i].val++;


                if (params[i].key[0])
                    i++;
            };
        }
        token = strtok( ((void*)0), delimiter );
    }
    return i;
}
