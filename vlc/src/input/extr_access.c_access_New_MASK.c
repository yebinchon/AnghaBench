#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_access_private {int /*<<< orphan*/ * module; } ;
struct TYPE_10__ {char* psz_name; char* psz_url; char* psz_filepath; int b_preparsing; char const* psz_location; int /*<<< orphan*/ * pf_control; int /*<<< orphan*/ * out; int /*<<< orphan*/ * p_input_item; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
typedef  int /*<<< orphan*/  es_out_t ;

/* Variables and functions */
 int MAX_REDIR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 
 char* FUNC12 (char*,int) ; 
 char* FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_access_Destroy ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 struct vlc_access_private* FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static stream_t *FUNC17(vlc_object_t *parent, input_thread_t *input,
                            es_out_t *out, bool preparsing, const char *mrl)
{
    struct vlc_access_private *priv;
    char *redirv[MAX_REDIR];
    unsigned redirc = 0;

    if (FUNC11(mrl, "attachment://", 13) == 0)
        return FUNC0(parent, input, mrl);

    stream_t *access = FUNC15(parent, vlc_access_Destroy,
                                            sizeof (*priv), "access");
    if (FUNC14(access == NULL))
        return NULL;

    access->p_input_item = input ? FUNC4(input) : NULL;
    access->out = out;
    access->psz_name = NULL;
    access->psz_url = FUNC9(mrl);
    access->psz_filepath = NULL;
    access->b_preparsing = preparsing;
    priv = FUNC16(access);

    if (FUNC14(access->psz_url == NULL))
        goto error;

    while (redirc < MAX_REDIR)
    {
        char *url = access->psz_url;
        FUNC6(access, "creating access: %s", url);

        const char *p = FUNC13(url, "://");
        if (p == NULL)
            goto error;

        access->psz_name = FUNC12(url, p - url);
        if (FUNC14(access->psz_name == NULL))
            goto error;

        access->psz_location = p + 3;
        access->psz_filepath = FUNC3(access->psz_location);
        if (access->psz_filepath != NULL)
            FUNC6(access, " (path: %s)", access->psz_filepath);

        priv->module = FUNC5(access, "access", access->psz_name, true);
        if (priv->module != NULL) /* success */
        {
            while (redirc > 0)
                FUNC2(redirv[--redirc]);

            FUNC1(access->pf_control != NULL);
            return access;
        }

        if (access->psz_url == url) /* failure (no redirection) */
            goto error;

        /* redirection */
        FUNC6(access, "redirecting to: %s", access->psz_url);
        redirv[redirc++] = url;

        for (unsigned j = 0; j < redirc; j++)
            if (!FUNC8(redirv[j], access->psz_url))
            {
                FUNC7(access, "redirection loop");
                goto error;
            }

        FUNC2(access->psz_filepath);
        FUNC2(access->psz_name);
        access->psz_filepath = access->psz_name = NULL;
    }

    FUNC7(access, "too many redirections");
error:
    while (redirc > 0)
        FUNC2(redirv[--redirc]);
    FUNC2(access->psz_filepath);
    FUNC2(access->psz_name);
    FUNC10(access);
    return NULL;
}