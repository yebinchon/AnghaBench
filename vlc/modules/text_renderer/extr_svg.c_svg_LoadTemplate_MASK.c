#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_size; } ;
typedef  int ssize_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_9__ {char* psz_file_template; scalar_t__ psz_token; } ;
typedef  TYPE_2__ filter_sys_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SVG_TEMPLATE_BODY_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 

__attribute__((used)) static void FUNC12( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    char *psz_template = NULL;
    char *psz_filename = FUNC10( p_filter, "svg-template-file" );
    if( psz_filename && psz_filename[0] )
    {
        /* Read the template */
        FILE *file = FUNC11( psz_filename, "rt" );
        if( !file )
        {
            FUNC8( p_filter, "SVG template file %s does not exist.",
                                         psz_filename );
        }
        else
        {
            struct stat s;
            if( FUNC4( FUNC1( file ), &s ) || ((signed)s.st_size) < 0 )
            {
                FUNC7( p_filter, "SVG template invalid" );
            }
            else
            {
                FUNC6( p_filter, "reading %ld bytes from template %s",
                         (unsigned long)s.st_size, psz_filename );

                psz_template = FUNC5( s.st_size + 1 );
                if( psz_template )
                {
                    psz_template[ s.st_size ] = 0;
                    ssize_t i_read = FUNC2( psz_template, s.st_size, 1, file );
                    if( i_read != 1 )
                    {
                        FUNC3( psz_template );
                        psz_template = NULL;
                    }
                }
            }
            FUNC0( file );
        }
    }
    FUNC3( psz_filename );

    if( psz_template )
    {
        p_sys->psz_token = FUNC9( psz_template, SVG_TEMPLATE_BODY_TOKEN );
        if( !p_sys->psz_token )
        {
            FUNC7( p_filter, "'%s' not found in SVG template", SVG_TEMPLATE_BODY_TOKEN );
            FUNC3( psz_template );
        }
        else *((char*)p_sys->psz_token) = 0;
    }

    p_sys->psz_file_template = psz_template;
}