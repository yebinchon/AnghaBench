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
struct string {char* data; } ;
struct sockinfo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct string*,int,struct sockinfo*) ; 
 int FUNC1 (struct string*,struct sockinfo*) ; 

int
FUNC2(struct string *name, int port, struct sockinfo *si)
{
    if (name != NULL && name->data[0] == '/') {
        return FUNC1(name, si);
    }

    return FUNC0(name, port, si);
}