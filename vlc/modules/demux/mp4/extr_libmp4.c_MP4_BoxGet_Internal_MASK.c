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
typedef  int /*<<< orphan*/  va_list ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ i_type; struct TYPE_4__* p_next; struct TYPE_4__* p_first; struct TYPE_4__* p_father; } ;
typedef  TYPE_1__ MP4_Box_t ;

/* Variables and functions */
 scalar_t__ ATOM_root ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( const MP4_Box_t **pp_result, const MP4_Box_t *p_box,
                                 const char *psz_fmt, va_list args)
{
    char *psz_dup;
    char *psz_path;
    char *psz_token = NULL;

    if( !p_box )
    {
        *pp_result = NULL;
        return;
    }

    if( FUNC5( &psz_path, psz_fmt, args ) == -1 )
        psz_path = NULL;

    if( !psz_path || !psz_path[0] )
    {
        FUNC1( psz_path );
        *pp_result = NULL;
        return;
    }

//    fprintf( stderr, "path:'%s'\n", psz_path );
    psz_dup = psz_path; /* keep this pointer, as it need to be unallocated */
    for( ; ; )
    {
        int i_number;

        if( !FUNC2( &psz_path, &psz_token, &i_number ) )
            goto error_box;
//        fprintf( stderr, "path:'%s', token:'%s' n:%d\n",
//                 psz_path,psz_token,i_number );
        if( !psz_token )
        {
            FUNC1( psz_dup );
            *pp_result = p_box;
            return;
        }
        else
        if( !FUNC3( psz_token, "/" ) )
        {
            /* Find root box */
            while( p_box && p_box->i_type != ATOM_root )
            {
                p_box = p_box->p_father;
            }
            if( !p_box )
            {
                goto error_box;
            }
        }
        else
        if( !FUNC3( psz_token, "." ) )
        {
            /* Do nothing */
        }
        else
        if( !FUNC3( psz_token, ".." ) )
        {
            p_box = p_box->p_father;
            if( !p_box )
            {
                goto error_box;
            }
        }
        else
        if( FUNC4( psz_token ) == 4 )
        {
            uint32_t i_fourcc;
            i_fourcc = FUNC0( psz_token[0], psz_token[1],
                                   psz_token[2], psz_token[3] );
            p_box = p_box->p_first;
            for( ; ; )
            {
                if( !p_box )
                {
                    goto error_box;
                }
                if( p_box->i_type == i_fourcc )
                {
                    if( !i_number )
                    {
                        break;
                    }
                    i_number--;
                }
                p_box = p_box->p_next;
            }
        }
        else
        if( *psz_token == '\0' )
        {
            p_box = p_box->p_first;
            for( ; ; )
            {
                if( !p_box )
                {
                    goto error_box;
                }
                if( !i_number )
                {
                    break;
                }
                i_number--;
                p_box = p_box->p_next;
            }
        }
        else
        {
//            fprintf( stderr, "Argg malformed token \"%s\"",psz_token );
            goto error_box;
        }

        FUNC1( psz_token );
    }

    return;

error_box:
    FUNC1( psz_token );
    FUNC1( psz_dup );
    *pp_result = NULL;
    return;
}