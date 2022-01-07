
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MRLSeekPoint (char const*,int*,int*) ;

__attribute__((used)) static void MRLSections( const char *p,
                         int *pi_title_start, int *pi_title_end,
                         int *pi_chapter_start, int *pi_chapter_end )
{
    *pi_title_start = *pi_title_end = *pi_chapter_start = *pi_chapter_end = -1;

    int title_start, chapter_start, title_end, chapter_end;

    if( !p )
        return;

    if( *p != '-' )
        p = MRLSeekPoint( p, &title_start, &chapter_start );
    else
        title_start = chapter_start = -1;

    if( *p == '-' )
        p = MRLSeekPoint( p + 1, &title_end, &chapter_end );
    else
        title_end = chapter_end = -1;

    if( *p )
        return;

    *pi_title_start = title_start;
    *pi_title_end = title_end;
    *pi_chapter_start = chapter_start;
    *pi_chapter_end = chapter_end;
}
