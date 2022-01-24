#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ answer; } ;
typedef  TYPE_1__ Uploader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 scalar_t__ FUNC3 (char*,size_t) ; 

__attribute__((used)) static size_t FUNC4(char *buf,
                              size_t size,
                              size_t nmemb,
                              void *userp) {
        Uploader *u = userp;

        FUNC0(u);

        FUNC1("The server answers (%zu bytes): %.*s",
                  size*nmemb, (int)(size*nmemb), buf);

        if (nmemb && !u->answer) {
                u->answer = FUNC3(buf, size*nmemb);
                if (!u->answer)
                        FUNC2("Failed to store server answer (%zu bytes): out of memory", size*nmemb);
        }

        return size * nmemb;
}