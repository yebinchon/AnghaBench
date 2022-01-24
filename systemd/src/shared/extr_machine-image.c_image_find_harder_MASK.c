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
typedef  int /*<<< orphan*/  ImageClass ;
typedef  int /*<<< orphan*/  Image ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (char const*) ; 

int FUNC3(ImageClass class, const char *name_or_path, Image **ret) {
        if (FUNC2(name_or_path))
                return FUNC0(class, name_or_path, ret);

        return FUNC1(name_or_path, ret);
}