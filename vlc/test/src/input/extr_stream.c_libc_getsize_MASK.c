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
typedef  int /*<<< orphan*/  uint64_t ;
struct stat {int /*<<< orphan*/  st_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  f; } ;
struct reader {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct stat*) ; 

__attribute__((used)) static uint64_t
FUNC3( struct reader *p_reader )
{
    struct stat st;
    int i_fd = FUNC1( p_reader->u.f );

    FUNC0( i_fd >= 0 );
    FUNC0( FUNC2( i_fd, &st ) != -1 );

    return st.st_size;
}