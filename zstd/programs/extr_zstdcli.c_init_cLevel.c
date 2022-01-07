
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAYLEVEL (int,char*,int ,char const* const) ;
 int ENV_CLEVEL ;
 int ZSTDCLI_CLEVEL_DEFAULT ;
 char* getenv (int ) ;
 scalar_t__ readU32FromCharChecked (char const**,unsigned int*) ;

__attribute__((used)) static int init_cLevel(void) {
    const char* const env = getenv(ENV_CLEVEL);
    if (env) {
        const char *ptr = env;
        int sign = 1;
        if (*ptr == '-') {
            sign = -1;
            ptr++;
        } else if (*ptr == '+') {
            ptr++;
        }

        if ((*ptr>='0') && (*ptr<='9')) {
            unsigned absLevel;
            if (readU32FromCharChecked(&ptr, &absLevel)) {
                DISPLAYLEVEL(2, "Ignore environment variable setting %s=%s: numeric value too large\n", ENV_CLEVEL, env);
                return ZSTDCLI_CLEVEL_DEFAULT;
            } else if (*ptr == 0) {
                return sign * (int)absLevel;
            }
        }

        DISPLAYLEVEL(2, "Ignore environment variable setting %s=%s: not a valid integer value\n", ENV_CLEVEL, env);
    }

    return ZSTDCLI_CLEVEL_DEFAULT;
}
