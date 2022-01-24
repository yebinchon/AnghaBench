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
struct aom_image {int dummy; } ;
typedef  struct aom_image const decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aom_image const*) ; 

__attribute__((used)) static void FUNC1(decoder_t *dec, const struct aom_image *img)
{
    FUNC0(dec);
    FUNC0(img);
    /* do nothing for now */
}