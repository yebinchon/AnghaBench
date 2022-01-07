
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {struct TYPE_13__* p_next; TYPE_1__* p_text; } ;
typedef TYPE_2__ subpicture_region_t ;
struct TYPE_14__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_15__ {int i_align; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_12__ {char* psz_text; } ;


 void* CreatePlainText (char*) ;
 TYPE_2__* CreateTextRegion (TYPE_3__*,char*,int ) ;
 char* GrabAttributeValue (char*,char*) ;
 TYPE_2__* LoadEmbeddedImage (TYPE_3__*,char*,int) ;
 int SetupPositions (TYPE_2__*,char*) ;
 int free (char*) ;
 char* strcasestr (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcspn (char*,char*) ;
 int strlen (char*) ;
 int strncasecmp (char*,char*,int) ;
 char* strndup (char*,int) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static subpicture_region_t *ParseUSFString( decoder_t *p_dec,
                                            char *psz_subtitle )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    subpicture_region_t *p_region_first = ((void*)0);
    subpicture_region_t *p_region_upto = p_region_first;

    while( *psz_subtitle )
    {
        if( *psz_subtitle == '<' )
        {
            char *psz_end = ((void*)0);


            if(( !strncasecmp( psz_subtitle, "<karaoke ", 9 )) ||
                    ( !strncasecmp( psz_subtitle, "<karaoke>", 9 )))
            {
                psz_end = strcasestr( psz_subtitle, "</karaoke>" );

                if( psz_end )
                {
                    subpicture_region_t *p_text_region;

                    char *psz_flat = ((void*)0);
                    char *psz_knodes = strndup( &psz_subtitle[9], psz_end - &psz_subtitle[9] );
                    if( psz_knodes )
                    {

                        psz_flat = CreatePlainText( psz_knodes );
                        free( psz_knodes );
                        if( psz_flat )
                        {
                            p_text_region = CreateTextRegion( p_dec,
                                                              psz_flat,
                                                              p_sys->i_align );
                            if( p_text_region )
                            {
                                free( p_text_region->p_text->psz_text );
                                p_text_region->p_text->psz_text = psz_flat;
                                if( !p_region_first )
                                {
                                    p_region_first = p_region_upto = p_text_region;
                                }
                                else if( p_text_region )
                                {
                                    p_region_upto->p_next = p_text_region;
                                    p_region_upto = p_region_upto->p_next;
                                }
                            }
                            else free( psz_flat );
                        }
                    }

                    psz_end += strcspn( psz_end, ">" ) + 1;
                }
            }
            else if(( !strncasecmp( psz_subtitle, "<image ", 7 )) ||
                    ( !strncasecmp( psz_subtitle, "<image>", 7 )))
            {
                subpicture_region_t *p_image_region = ((void*)0);

                psz_end = strcasestr( psz_subtitle, "</image>" );
                char *psz_content = strchr( psz_subtitle, '>' );
                int i_transparent = -1;
                char *psz_tmp = GrabAttributeValue( "colorkey", psz_subtitle );
                if( psz_tmp )
                {
                    if( *psz_tmp == '#' )
                        i_transparent = strtol( psz_tmp + 1, ((void*)0), 16 ) & 0x00ffffff;
                    free( psz_tmp );
                }
                if( psz_content && ( psz_content < psz_end ) )
                {
                    char *psz_filename = strndup( &psz_content[1], psz_end - &psz_content[1] );
                    if( psz_filename )
                    {
                        p_image_region = LoadEmbeddedImage( p_dec,
                                            psz_filename, i_transparent );
                        free( psz_filename );
                    }
                }

                if( psz_end ) psz_end += strcspn( psz_end, ">" ) + 1;

                if( p_image_region )
                {
                    SetupPositions( p_image_region, psz_subtitle );

                    p_image_region->p_next = ((void*)0);
                }
                if( !p_region_first )
                {
                    p_region_first = p_region_upto = p_image_region;
                }
                else if( p_image_region )
                {
                    p_region_upto->p_next = p_image_region;
                    p_region_upto = p_region_upto->p_next;
                }
            }
            else
            {
                subpicture_region_t *p_text_region;

                psz_end = psz_subtitle + strlen( psz_subtitle );

                p_text_region = CreateTextRegion( p_dec,
                                                  psz_subtitle,
                                                  p_sys->i_align );

                if( p_text_region )
                {
                    free( p_text_region->p_text->psz_text );
                    p_text_region->p_text->psz_text = CreatePlainText( psz_subtitle );
                }

                if( !p_region_first )
                {
                    p_region_first = p_region_upto = p_text_region;
                }
                else if( p_text_region )
                {
                    p_region_upto->p_next = p_text_region;
                    p_region_upto = p_region_upto->p_next;
                }
            }
            if( psz_end )
                psz_subtitle = psz_end - 1;

            psz_subtitle += strcspn( psz_subtitle, ">" );
        }

        psz_subtitle++;
    }

    return p_region_first;
}
