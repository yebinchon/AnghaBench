
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* auth; } ;


 int REDIS_CLI_AUTH_ENV ;
 TYPE_1__ config ;
 char* getenv (int ) ;

__attribute__((used)) static void parseEnv() {

    char *auth = getenv(REDIS_CLI_AUTH_ENV);
    if (auth != ((void*)0) && config.auth == ((void*)0)) {
        config.auth = auth;
    }
}
