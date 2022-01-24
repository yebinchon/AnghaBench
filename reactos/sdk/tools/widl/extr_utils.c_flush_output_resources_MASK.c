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
struct TYPE_2__ {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int O_BINARY ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int nb_resources ; 
 int FUNC4 (char const*,int,int) ; 
 int /*<<< orphan*/  output_buffer ; 
 scalar_t__ output_buffer_pos ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__* resources ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC8( const char *name )
{
    int fd;
    unsigned int i;

    /* all output must have been saved with add_output_to_resources() first */
    FUNC0( !output_buffer_pos );

    FUNC5( 0 );      /* ResSize */
    FUNC5( 32 );     /* HeaderSize */
    FUNC6( 0xffff );  /* ResType */
    FUNC6( 0x0000 );
    FUNC6( 0xffff );  /* ResName */
    FUNC6( 0x0000 );
    FUNC5( 0 );      /* DataVersion */
    FUNC6( 0 );       /* Memory options */
    FUNC6( 0 );       /* Language */
    FUNC5( 0 );      /* Version */
    FUNC5( 0 );      /* Characteristics */

    fd = FUNC4( name, O_WRONLY | O_CREAT | O_TRUNC | O_BINARY, 0666 );
    if (fd == -1) FUNC2( "Error creating %s\n", name );
    if (FUNC7( fd, output_buffer, output_buffer_pos ) != output_buffer_pos)
        FUNC2( "Error writing to %s\n", name );
    for (i = 0; i < nb_resources; i++)
    {
        if (FUNC7( fd, resources[i].data, resources[i].size ) != resources[i].size)
            FUNC2( "Error writing to %s\n", name );
        FUNC3( resources[i].data );
    }
    FUNC1( fd );
    nb_resources = 0;
    FUNC3( output_buffer );
}