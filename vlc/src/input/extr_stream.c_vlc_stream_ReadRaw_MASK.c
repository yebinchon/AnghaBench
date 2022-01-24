#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ (* pf_read ) (TYPE_1__*,char*,int) ;int /*<<< orphan*/ * (* pf_block ) (TYPE_1__*,int*) ;} ;
typedef  TYPE_1__ stream_t ;
struct TYPE_8__ {int /*<<< orphan*/ * block; } ;
typedef  TYPE_2__ stream_priv_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 size_t SSIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,void*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,void*,size_t) ; 

__attribute__((used)) static ssize_t FUNC7(stream_t *s, void *buf, size_t len)
{
    stream_priv_t *priv = (stream_priv_t *)s;
    ssize_t ret;

    FUNC0(len <= SSIZE_MAX);

    if (FUNC5())
        return 0;

    if (s->pf_read != NULL)
    {
        FUNC0(priv->block == NULL);
        if (buf == NULL)
        {
            if (FUNC4(len == 0))
                return 0;

            char dummy[(len <= 256 ? len : 256)];
            ret = s->pf_read(s, dummy, sizeof (dummy));
        }
        else
            ret = s->pf_read(s, buf, len);
        return ret;
    }

    ret = FUNC6(&priv->block, buf, len);
    if (ret >= 0)
        return ret;

    if (s->pf_block != NULL)
    {
        bool eof = false;

        priv->block = s->pf_block(s, &eof);
        ret = FUNC6(&priv->block, buf, len);
        if (ret >= 0)
            return ret;
        return eof ? 0 : -1;
    }

    return 0;
}