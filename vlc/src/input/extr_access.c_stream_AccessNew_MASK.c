#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_access_stream_private {int /*<<< orphan*/ * input; } ;
struct TYPE_11__ {struct TYPE_11__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_seek; int /*<<< orphan*/ * pf_read; int /*<<< orphan*/ * pf_block; int /*<<< orphan*/ * psz_url; int /*<<< orphan*/ * p_input_item; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
typedef  int /*<<< orphan*/  es_out_t ;

/* Variables and functions */
 int /*<<< orphan*/  AStreamControl ; 
 int /*<<< orphan*/  AStreamDestroy ; 
 int /*<<< orphan*/ * AStreamReadBlock ; 
 int /*<<< orphan*/ * AStreamReadStream ; 
 int /*<<< orphan*/  AStreamSeek ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 struct vlc_access_stream_private* FUNC9 (TYPE_1__*) ; 

stream_t *FUNC10(vlc_object_t *parent, input_thread_t *input,
                           es_out_t *out, bool preparsing, const char *url)
{
    stream_t *access = FUNC1(parent, input, out, preparsing, url);
    if (access == NULL)
        return NULL;

    stream_t *s;

    if (access->pf_block != NULL || access->pf_read != NULL)
    {
        struct vlc_access_stream_private *priv;
        s = FUNC7(FUNC0(access), AStreamDestroy,
                                 sizeof(*priv), "stream");

        if (FUNC5(s == NULL))
        {
            FUNC8(access);
            return NULL;
        }
        priv = FUNC9(s);
        priv->input = input;

        s->p_input_item = input ? FUNC2(input) : NULL;
        s->psz_url = FUNC3(access->psz_url);
        if (FUNC5(s->psz_url == NULL))
        {
            FUNC6(s);
            FUNC8(access);
            return NULL;
        }

        if (access->pf_block != NULL)
            s->pf_block = AStreamReadBlock;
        if (access->pf_read != NULL)
            s->pf_read = AStreamReadStream;

        s->pf_seek = AStreamSeek;
        s->pf_control = AStreamControl;
        s->p_sys = access;

        s = FUNC4(s, "prefetch,cache");
    }
    else
        s = access;

    return s;
}