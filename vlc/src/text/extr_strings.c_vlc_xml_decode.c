
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xml_entity_s {int psz_entity; int psz_char; } ;


 int ARRAY_SIZE (int ) ;
 struct xml_entity_s* bsearch (char*,int ,int ,int,int ) ;
 int cmp_entity ;
 int memcpy (char*,int ,size_t) ;
 int strlen (int ) ;
 unsigned long strtoul (char*,char**,int) ;
 int xml_entities ;

void vlc_xml_decode( char *psz_value )
{
    char *p_pos = psz_value;

    while ( *psz_value )
    {
        if( *psz_value == '&' )
        {
            if( psz_value[1] == '#' )
            {
                char *psz_end;
                unsigned long cp;

                if( psz_value[2] == 'x' )
                    cp = strtoul( psz_value + 3, &psz_end, 16 );
                else
                    cp = strtoul( psz_value + 2, &psz_end, 10 );

                if( *psz_end == ';' )
                {
                    psz_value = psz_end + 1;
                    if( cp == 0 )
                        (void)0;
                    else
                    if( cp <= 0x7F )
                    {
                        *p_pos = cp;
                    }
                    else


                    if( cp <= 0x7FF )
                    {
                        *p_pos++ = 0xC0 | (cp >> 6);
                        *p_pos = 0x80 | (cp & 0x3F);
                    }
                    else
                    if( cp <= 0xFFFF )
                    {
                        *p_pos++ = 0xE0 | (cp >> 12);
                        *p_pos++ = 0x80 | ((cp >> 6) & 0x3F);
                        *p_pos = 0x80 | (cp & 0x3F);
                    }
                    else
                    if( cp <= 0x1FFFFF )
                    {
                        *p_pos++ = 0xF0 | (cp >> 18);
                        *p_pos++ = 0x80 | ((cp >> 12) & 0x3F);
                        *p_pos++ = 0x80 | ((cp >> 6) & 0x3F);
                        *p_pos = 0x80 | (cp & 0x3F);
                    }
                }
                else
                {

                    *p_pos = *psz_value;
                    psz_value++;
                }
            }
            else
            {
                const struct xml_entity_s *ent;

                ent = bsearch (psz_value + 1, xml_entities,
                               ARRAY_SIZE (xml_entities),
                               sizeof (*ent), cmp_entity);
                if (ent != ((void*)0))
                {
                    size_t olen = strlen (ent->psz_char);
                    memcpy (p_pos, ent->psz_char, olen);
                    p_pos += olen - 1;
                    psz_value += strlen (ent->psz_entity) + 1;
                }
                else
                {
                    *p_pos = *psz_value;
                    psz_value++;
                }
            }
        }
        else
        {
            *p_pos = *psz_value;
            psz_value++;
        }

        p_pos++;
    }

    *p_pos = '\0';
}
