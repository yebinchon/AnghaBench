#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int resp; } ;
typedef  TYPE_1__ client ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int) ; 
 size_t FUNC2 (char*,int,char*,size_t) ; 

void FUNC3(client *c, const char *s, size_t len, const char *ext) {
    if (c->resp == 2) {
        FUNC0(c,s,len);
    } else {
        char buf[32];
        size_t preflen = FUNC2(buf,sizeof(buf),"=%zu\r\nxxx:",len+4);
        char *p = buf+preflen-4;
        for (int i = 0; i < 3; i++) {
            if (*ext == '\0') {
                p[i] = ' ';
            } else {
                p[i] = *ext++;
            }
        }
        FUNC1(c,buf,preflen);
        FUNC1(c,s,len);
        FUNC1(c,"\r\n",2);
    }
}