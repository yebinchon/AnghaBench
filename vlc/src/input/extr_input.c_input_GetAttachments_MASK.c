#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_5__ {int i_attachment; TYPE_1__* p_item; int /*<<< orphan*/ * attachment; } ;
typedef  TYPE_2__ input_thread_private_t ;
typedef  int /*<<< orphan*/  input_attachment_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(input_thread_t *input,
                         input_attachment_t ***attachments)
{
    input_thread_private_t *priv = FUNC0(input);

    FUNC3(&priv->p_item->lock);
    int attachments_count = priv->i_attachment;
    if (attachments_count <= 0)
    {
        FUNC4(&priv->p_item->lock);
        *attachments = NULL;
        return 0;
    }

    *attachments = FUNC1(attachments_count, sizeof(input_attachment_t*));
    if (!*attachments)
        return -1;

    for (int i = 0; i < attachments_count; i++)
        (*attachments)[i] = FUNC2(priv->attachment[i]);

    FUNC4(&priv->p_item->lock);
    return attachments_count;
}