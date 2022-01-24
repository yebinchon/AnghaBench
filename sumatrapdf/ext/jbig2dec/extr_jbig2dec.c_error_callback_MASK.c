#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  segment ;
struct TYPE_2__ {int verbose; char* last_message; int repeats; char* type; int severity; } ;
typedef  TYPE_1__ jbig2dec_params_t ;
typedef  int int32_t ;
typedef  int Jbig2Severity ;

/* Variables and functions */
#define  JBIG2_SEVERITY_DEBUG 131 
#define  JBIG2_SEVERITY_FATAL 130 
#define  JBIG2_SEVERITY_INFO 129 
#define  JBIG2_SEVERITY_WARNING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(void *error_callback_data, const char *buf, Jbig2Severity severity, int32_t seg_idx)
{
    jbig2dec_params_t *params = (jbig2dec_params_t *) error_callback_data;
    char *type;
    char segment[22];
    int len;
    char *message;

    switch (severity) {
    case JBIG2_SEVERITY_DEBUG:
        if (params->verbose < 3)
            return;
        type = "DEBUG";
        break;
    case JBIG2_SEVERITY_INFO:
        if (params->verbose < 2)
            return;
        type = "info";
        break;
    case JBIG2_SEVERITY_WARNING:
        if (params->verbose < 1)
            return;
        type = "WARNING";
        break;
    case JBIG2_SEVERITY_FATAL:
        type = "FATAL ERROR";
        break;
    default:
        type = "unknown message";
        break;
    }
    if (seg_idx == -1)
        segment[0] = '\0';
    else
        FUNC3(segment, sizeof(segment), "(segment 0x%02x)", seg_idx);

    len = FUNC3(NULL, 0, "jbig2dec %s %s %s", type, buf, segment);
    if (len < 0) {
        return;
    }

    message = FUNC2(len + 1);
    if (message == NULL) {
        return;
    }

    len = FUNC3(message, len + 1, "jbig2dec %s %s %s", type, buf, segment);
    if (len < 0)
    {
        FUNC1(message);
        return;
    }

    if (params->last_message != NULL && FUNC4(message, params->last_message)) {
        if (params->repeats > 1)
            FUNC0(stderr, "jbig2dec %s last message repeated %d times\n", params->type, params->repeats);
        FUNC0(stderr, "%s\n", message);
        FUNC1(params->last_message);
        params->last_message = message;
        params->severity = severity;
        params->type = type;
        params->repeats = 0;
    } else if (params->last_message != NULL) {
        params->repeats++;
        if (params->repeats % 1000000 == 0)
            FUNC0(stderr, "jbig2dec %s last message repeated %d times so far\n", params->type, params->repeats);
        FUNC1(message);
    } else if (params->last_message == NULL) {
        FUNC0(stderr, "%s\n", message);
        params->last_message = message;
        params->severity = severity;
        params->type = type;
        params->repeats = 0;
    }
}