#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct enc_picture_free_t {int /*<<< orphan*/  p_pic; } ;
typedef  int /*<<< orphan*/  SchroFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enc_picture_free_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( SchroFrame *frame, void *priv )
{
    struct enc_picture_free_t *p_free = priv;

    if( !p_free )
        return;

    FUNC1( p_free->p_pic );
    FUNC0( p_free );
    (void)frame;
}