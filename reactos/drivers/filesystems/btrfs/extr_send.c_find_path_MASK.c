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
struct TYPE_3__ {int namelen; char* name; struct TYPE_3__* parent; } ;
typedef  TYPE_1__ send_dir ;
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(char* path, send_dir* parent, char* name, ULONG namelen) {
    ULONG len = namelen;

    FUNC0(path, name, namelen);

    while (parent && parent->namelen > 0) {
        FUNC1(path + parent->namelen + 1, path, len);
        FUNC0(path, parent->name, parent->namelen);
        path[parent->namelen] = '/';
        len += parent->namelen + 1;

        parent = parent->parent;
    }
}