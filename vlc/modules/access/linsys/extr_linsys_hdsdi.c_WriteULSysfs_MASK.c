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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  psz_file ;
typedef  int /*<<< orphan*/  psz_data ;

/* Variables and functions */
 int MAXLEN ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,unsigned int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC5( const char *psz_fmt, unsigned int i_link,
                             unsigned int i_buf )
{
    char psz_file[MAXLEN], psz_data[MAXLEN];
    int i_fd;
    ssize_t i_ret;

    FUNC0( psz_file, sizeof(psz_file) -1, psz_fmt, i_link );

    FUNC0( psz_data, sizeof(psz_data) -1, "%u\n", i_buf );

    if ( (i_fd = FUNC3( psz_file, O_WRONLY )) < 0 )
        return i_fd;

    i_ret = FUNC4( i_fd, psz_data, FUNC1(psz_data) + 1 );
    FUNC2( i_fd );
    return i_ret;
}