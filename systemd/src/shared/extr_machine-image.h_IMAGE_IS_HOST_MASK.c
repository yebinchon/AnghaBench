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
struct Image {scalar_t__ path; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Image const*) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 

__attribute__((used)) static inline bool FUNC3(const struct Image *i) {
        FUNC0(i);

        if (i->name && FUNC2(i->name, ".host"))
                return true;

        if (i->path && FUNC1(i->path, "/"))
                return true;

        return false;
}