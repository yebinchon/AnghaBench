#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  Tox ;
struct TYPE_2__ {scalar_t__ friendnum; scalar_t__ filenumber; scalar_t__ file; } ;
typedef  int TOX_FILE_CONTROL ;

/* Variables and functions */
 unsigned int NUM_FILE_SENDERS ; 
 int TOX_FILE_CONTROL_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* file_senders ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__,...) ; 

void FUNC3(Tox *tox, uint32_t friend_number, uint32_t file_number, TOX_FILE_CONTROL control,
                        void *user_data)
{
    char msg[512] = {0};
    FUNC2(msg, "[t] control %u received", control);
    FUNC1(msg);

    if (control == TOX_FILE_CONTROL_CANCEL) {
        unsigned int i;

        for (i = 0; i < NUM_FILE_SENDERS; ++i) {
            /* This is slow */
            if (file_senders[i].file && file_senders[i].friendnum == friend_number && file_senders[i].filenumber == file_number) {
                FUNC0(file_senders[i].file);
                file_senders[i].file = 0;
                char msg[512];
                FUNC2(msg, "[t] %u file transfer: %u cancelled", file_senders[i].friendnum, file_senders[i].filenumber);
                FUNC1(msg);
            }
        }
    }
}