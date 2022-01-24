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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  vlc_b64_decode ; 
 int /*<<< orphan*/  vlc_b64_encode ; 

__attribute__((used)) static inline void FUNC1 (const char *in, const char *out)
{
    FUNC0(vlc_b64_encode, in, out);
    FUNC0(vlc_b64_decode, out, in);
}