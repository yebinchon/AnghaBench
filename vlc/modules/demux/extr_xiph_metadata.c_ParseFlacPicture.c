
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int name ;
typedef int input_attachment_t ;
typedef int i_attachments ;


 size_t ARRAY_SIZE (char const*) ;
 int EnsureUTF8 (char*) ;
 size_t GetDWBE (int const*) ;
 int RM (int) ;
 int free (char*) ;
 int snprintf (char*,int,char*,int) ;
 int strcasecmp (char*,char*) ;
 int strcat (char*,char*) ;
 char* strndup (char const*,size_t) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_input_attachment_New (char*,char*,char*,int const*,size_t) ;

input_attachment_t* ParseFlacPicture( const uint8_t *p_data, size_t size,
    int i_attachments, int *i_cover_score, int *i_cover_idx )
{

    static const char pi_cover_score[] = {
        0,
        5,
        4,
        20,
        19,
        13,
        18,
        17,
        16,
        14,
        15,
        9,
        8,
        7,
        10,
        11,
        6,
        1,
        12,
        3,
        2
    };

    uint32_t type, len;

    if( size < 8 )
        return ((void*)0);







    type = GetDWBE( p_data );
    do { assert(size >= (4)); size -= (4); p_data += (4); } while (0);
    len = GetDWBE( p_data );
    do { assert(size >= (4)); size -= (4); p_data += (4); } while (0);

    if( size < len )
        return ((void*)0);

    char *mime = strndup( (const char *)p_data, len );
    if( unlikely(mime == ((void*)0)) )
        return ((void*)0);
    do { assert(size >= (len)); size -= (len); p_data += (len); } while (0);

    if( size < 4 )
    {
        free( mime );
        return ((void*)0);
    }

    len = GetDWBE( p_data );
    do { assert(size >= (4)); size -= (4); p_data += (4); } while (0);

    if( size < len )
    {
        free( mime );
        return ((void*)0);
    }

    input_attachment_t *p_attachment = ((void*)0);
    char *description = strndup( (const char *)p_data, len );
    if( unlikely(description == ((void*)0)) )
        goto error;
    do { assert(size >= (len)); size -= (len); p_data += (len); } while (0);

    EnsureUTF8( description );

    if( size < 20 )
        goto error;

    do { assert(size >= (4 * 4)); size -= (4 * 4); p_data += (4 * 4); } while (0);

    len = GetDWBE( p_data );
    do { assert(size >= (4)); size -= (4); p_data += (4); } while (0);

    if( size < len )
        goto error;




    char name[7 + (sizeof (i_attachments) * 3) + 4 + 1];

    snprintf( name, sizeof (name), "picture%u", i_attachments );

    if( !strcasecmp( mime, "image/jpeg" ) )
        strcat( name, ".jpg" );
    else if( !strcasecmp( mime, "image/png" ) )
        strcat( name, ".png" );

    p_attachment = vlc_input_attachment_New( name, mime, description, p_data,
                                             size );

    if( type < ARRAY_SIZE(pi_cover_score) &&
        *i_cover_score < pi_cover_score[type] )
    {
        *i_cover_idx = i_attachments;
        *i_cover_score = pi_cover_score[type];
    }

error:
    free( mime );
    free( description );
    return p_attachment;
}
