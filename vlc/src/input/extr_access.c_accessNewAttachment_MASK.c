#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {scalar_t__ psz_url; scalar_t__ psz_location; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
typedef  int /*<<< orphan*/  input_attachment_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static stream_t *FUNC5(vlc_object_t *parent,
                                     input_thread_t *input, const char *mrl)
{
    if (!input)
        return NULL;

    input_attachment_t *attachment = FUNC0(input, mrl + 13);
    if (!attachment)
        return NULL;
    stream_t *stream = FUNC3(parent, attachment);
    if (!stream)
    {
        FUNC2(attachment);
        return NULL;
    }
    stream->psz_url = FUNC1(mrl);
    if (!stream->psz_url)
    {
        FUNC4(stream);
        return NULL;
    }
    stream->psz_location = stream->psz_url + 13;
    return stream;
}