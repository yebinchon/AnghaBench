#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* key; char* val; } ;
typedef  TYPE_1__ parsed_param_t ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 size_t FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(char *query, const char* delimiter,
        parsed_param_t *params, int max_params)
{
    int i = 0;
    char *token = NULL;

    if (!query || *query == '\0')
        return -1;
    if (!params || max_params == 0)
        return 0;

    token = FUNC2( query, delimiter );
    while (token != NULL && i < max_params) {
        params[i].key = token;
        params[i].val = NULL;
        if ((params[i].val = FUNC0( params[i].key, '=' )) != NULL) {
            size_t val_len = FUNC1( params[i].val );

            /* make key into a zero-delimited string */
            *(params[i].val) = '\0';

            /* make sure val is not empty */
            if (val_len > 1) {
                params[i].val++;

                /* make sure key is not empty */
                if (params[i].key[0])
                    i++;
            };
        }
        token = FUNC2( NULL, delimiter );
    }
    return i;
}