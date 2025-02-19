
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int ssize_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_9__ {char* psz_file_template; scalar_t__ psz_token; } ;
typedef TYPE_2__ filter_sys_t ;
typedef int FILE ;


 int SVG_TEMPLATE_BODY_TOKEN ;
 int fclose (int *) ;
 int fileno (int *) ;
 int fread (char*,size_t,int,int *) ;
 int free (char*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 char* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*,unsigned long,char*) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int msg_Warn (TYPE_1__*,char*,char*) ;
 scalar_t__ strstr (char*,int ) ;
 char* var_InheritString (TYPE_1__*,char*) ;
 int * vlc_fopen (char*,char*) ;

__attribute__((used)) static void svg_LoadTemplate( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    char *psz_template = ((void*)0);
    char *psz_filename = var_InheritString( p_filter, "svg-template-file" );
    if( psz_filename && psz_filename[0] )
    {

        FILE *file = vlc_fopen( psz_filename, "rt" );
        if( !file )
        {
            msg_Warn( p_filter, "SVG template file %s does not exist.",
                                         psz_filename );
        }
        else
        {
            struct stat s;
            if( fstat( fileno( file ), &s ) || ((signed)s.st_size) < 0 )
            {
                msg_Err( p_filter, "SVG template invalid" );
            }
            else
            {
                msg_Dbg( p_filter, "reading %ld bytes from template %s",
                         (unsigned long)s.st_size, psz_filename );

                psz_template = malloc( s.st_size + 1 );
                if( psz_template )
                {
                    psz_template[ s.st_size ] = 0;
                    ssize_t i_read = fread( psz_template, s.st_size, 1, file );
                    if( i_read != 1 )
                    {
                        free( psz_template );
                        psz_template = ((void*)0);
                    }
                }
            }
            fclose( file );
        }
    }
    free( psz_filename );

    if( psz_template )
    {
        p_sys->psz_token = strstr( psz_template, SVG_TEMPLATE_BODY_TOKEN );
        if( !p_sys->psz_token )
        {
            msg_Err( p_filter, "'%s' not found in SVG template", SVG_TEMPLATE_BODY_TOKEN );
            free( psz_template );
        }
        else *((char*)p_sys->psz_token) = 0;
    }

    p_sys->psz_file_template = psz_template;
}
