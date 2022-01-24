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
struct pollfd {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_t ;

/* Variables and functions */
 int FUNC0 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pollfd*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pollfd*,int,unsigned short*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6 (snd_pcm_t *pcm, int canc)
{
    int n = FUNC2 (pcm);
    struct pollfd ufd[n];
    unsigned short revents;

    FUNC1 (pcm, ufd, n);
    do
    {
        FUNC4 (canc);
        while (FUNC0 (ufd, n, -1) == -1);
        canc = FUNC5 ();
        FUNC3 (pcm, ufd, n, &revents);
    }
    while (!revents);
}