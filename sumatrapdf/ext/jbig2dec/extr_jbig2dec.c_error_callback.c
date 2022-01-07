
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int segment ;
struct TYPE_2__ {int verbose; char* last_message; int repeats; char* type; int severity; } ;
typedef TYPE_1__ jbig2dec_params_t ;
typedef int int32_t ;
typedef int Jbig2Severity ;






 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
error_callback(void *error_callback_data, const char *buf, Jbig2Severity severity, int32_t seg_idx)
{
    jbig2dec_params_t *params = (jbig2dec_params_t *) error_callback_data;
    char *type;
    char segment[22];
    int len;
    char *message;

    switch (severity) {
    case 131:
        if (params->verbose < 3)
            return;
        type = "DEBUG";
        break;
    case 129:
        if (params->verbose < 2)
            return;
        type = "info";
        break;
    case 128:
        if (params->verbose < 1)
            return;
        type = "WARNING";
        break;
    case 130:
        type = "FATAL ERROR";
        break;
    default:
        type = "unknown message";
        break;
    }
    if (seg_idx == -1)
        segment[0] = '\0';
    else
        snprintf(segment, sizeof(segment), "(segment 0x%02x)", seg_idx);

    len = snprintf(((void*)0), 0, "jbig2dec %s %s %s", type, buf, segment);
    if (len < 0) {
        return;
    }

    message = malloc(len + 1);
    if (message == ((void*)0)) {
        return;
    }

    len = snprintf(message, len + 1, "jbig2dec %s %s %s", type, buf, segment);
    if (len < 0)
    {
        free(message);
        return;
    }

    if (params->last_message != ((void*)0) && strcmp(message, params->last_message)) {
        if (params->repeats > 1)
            fprintf(stderr, "jbig2dec %s last message repeated %ld times\n", params->type, params->repeats);
        fprintf(stderr, "%s\n", message);
        free(params->last_message);
        params->last_message = message;
        params->severity = severity;
        params->type = type;
        params->repeats = 0;
    } else if (params->last_message != ((void*)0)) {
        params->repeats++;
        if (params->repeats % 1000000 == 0)
            fprintf(stderr, "jbig2dec %s last message repeated %ld times so far\n", params->type, params->repeats);
        free(message);
    } else if (params->last_message == ((void*)0)) {
        fprintf(stderr, "%s\n", message);
        params->last_message = message;
        params->severity = severity;
        params->type = type;
        params->repeats = 0;
    }
}
