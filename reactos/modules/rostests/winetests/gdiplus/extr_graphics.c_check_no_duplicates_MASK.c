#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; struct TYPE_4__* next; } ;
typedef  TYPE_1__ node ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(node * log)
{
    INT dups = 0;
    node * temp = NULL;
    node * temp2 = NULL;
    node * orig = log;

    if(!log)
        goto end;

    do{
        temp = log;
        while((temp = temp->next)){
            if(log->data == temp->data){
                dups++;
                break;
            }
            if(dups > 0)
                break;
        }
    }while((log = log->next));

    temp = orig;
    do{
        temp2 = temp->next;
        FUNC1(FUNC0(), 0, temp);
        temp = temp2;
    }while(temp);

end:
    FUNC2(0, dups);
}