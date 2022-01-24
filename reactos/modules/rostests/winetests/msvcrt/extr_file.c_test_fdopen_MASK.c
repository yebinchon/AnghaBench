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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int O_BINARY ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int _S_IREAD ; 
 int _S_IWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int FUNC7 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char const*,int) ; 

__attribute__((used)) static void FUNC10( void )
{
    static const char buffer[] = {0,1,2,3,4,5,6,7,8,9};
    char ibuf[10];
    int fd;
    FILE *file;

    fd = FUNC7 ("fdopen.tst", O_WRONLY | O_CREAT | O_BINARY, _S_IREAD |_S_IWRITE);
    FUNC9 (fd, buffer, sizeof (buffer));
    FUNC0 (fd);

    fd = FUNC7 ("fdopen.tst", O_RDONLY | O_BINARY);
    FUNC4 (fd, 5, SEEK_SET);
    file = FUNC2 (fd, "rb");
    FUNC6 (FUNC3 (ibuf, 1, sizeof (buffer), file) == 5, "read wrong byte count\n");
    FUNC6 (FUNC5 (ibuf, buffer + 5, 5) == 0, "read wrong bytes\n");
    FUNC1 (file);
    FUNC8 ("fdopen.tst");
}