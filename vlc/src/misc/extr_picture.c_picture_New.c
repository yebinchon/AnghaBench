
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef int video_format_t ;
typedef int picture_t ;


 int * picture_NewFromFormat (int *) ;
 int video_format_Init (int *,int ) ;
 int video_format_Setup (int *,int ,int,int,int,int,int,int) ;

picture_t *picture_New( vlc_fourcc_t i_chroma, int i_width, int i_height, int i_sar_num, int i_sar_den )
{
    video_format_t fmt;

    video_format_Init( &fmt, 0 );
    video_format_Setup( &fmt, i_chroma, i_width, i_height,
                        i_width, i_height, i_sar_num, i_sar_den );

    return picture_NewFromFormat( &fmt );
}
