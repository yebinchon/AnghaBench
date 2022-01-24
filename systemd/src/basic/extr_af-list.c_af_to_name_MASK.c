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

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 char const** af_names ; 

const char *FUNC1(int id) {

        if (id <= 0)
                return NULL;

        if ((size_t) id >= FUNC0(af_names))
                return NULL;

        return af_names[id];
}