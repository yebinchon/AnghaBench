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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int ANET_ERR ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int,struct sockaddr*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC5(char *err, char *path, mode_t perm, int backlog)
{
    int s;
    struct sockaddr_un sa;

    if ((s = FUNC0(err,AF_LOCAL)) == ANET_ERR)
        return ANET_ERR;

    FUNC3(&sa,0,sizeof(sa));
    sa.sun_family = AF_LOCAL;
    FUNC4(sa.sun_path,path,sizeof(sa.sun_path)-1);
    if (FUNC1(err,s,(struct sockaddr*)&sa,sizeof(sa),backlog) == ANET_ERR)
        return ANET_ERR;
    if (perm)
        FUNC2(sa.sun_path, perm);
    return s;
}