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
struct vlc_h2_frame {int /*<<< orphan*/  data; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  external_tls ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_h2_frame*) ; 
 size_t FUNC2 (struct vlc_h2_frame*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(struct vlc_h2_frame *f)
{
    FUNC0(f != NULL);

    size_t len = FUNC2(f);
    ssize_t val = FUNC3(external_tls, f->data, len);
    FUNC0((size_t)val == len);
    FUNC1(f);
}