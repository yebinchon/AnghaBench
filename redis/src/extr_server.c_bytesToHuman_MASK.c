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
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long long) ; 

void FUNC1(char *s, unsigned long long n) {
    double d;

    if (n < 1024) {
        /* Bytes */
        FUNC0(s,"%lluB",n);
    } else if (n < (1024*1024)) {
        d = (double)n/(1024);
        FUNC0(s,"%.2fK",d);
    } else if (n < (1024LL*1024*1024)) {
        d = (double)n/(1024*1024);
        FUNC0(s,"%.2fM",d);
    } else if (n < (1024LL*1024*1024*1024)) {
        d = (double)n/(1024LL*1024*1024);
        FUNC0(s,"%.2fG",d);
    } else if (n < (1024LL*1024*1024*1024*1024)) {
        d = (double)n/(1024LL*1024*1024*1024);
        FUNC0(s,"%.2fT",d);
    } else if (n < (1024LL*1024*1024*1024*1024*1024)) {
        d = (double)n/(1024LL*1024*1024*1024*1024);
        FUNC0(s,"%.2fP",d);
    } else {
        /* Let's hope we never need this */
        FUNC0(s,"%lluB",n);
    }
}