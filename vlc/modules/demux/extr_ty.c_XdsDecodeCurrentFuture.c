
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int psz_rating; int rating; int psz_name; } ;
struct TYPE_8__ {TYPE_4__ current; TYPE_4__ future; } ;
struct TYPE_9__ {int i_type; TYPE_1__ meta; scalar_t__ b_future; } ;
typedef TYPE_2__ xds_t ;
struct TYPE_10__ {int* p_data; int i_data; } ;
typedef TYPE_3__ xds_packet_t ;
typedef TYPE_4__ xds_meta_program_t ;


 int XDS_META_PROGRAM_RATING_MPAA ;
 int XDS_META_PROGRAM_RATING_NONE ;
 int XDS_META_PROGRAM_RATING_TPG ;
 int XdsChangeString (TYPE_2__*,int *,char const*) ;
 int XdsStringUtf8 (char*,int*,int ) ;
 int assert (int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void XdsDecodeCurrentFuture( xds_t *h, xds_packet_t *pk )
{
    xds_meta_program_t *p_prg = h->b_future ? &h->meta.future : &h->meta.current;
    char name[2*32+1];
    int i_rating;

    switch( h->i_type )
    {
    case 0x03:
        XdsStringUtf8( name, pk->p_data, pk->i_data );
        if( XdsChangeString( h, &p_prg->psz_name, name ) )
        {


        }
        break;
    case 0x05:
        i_rating = (pk->p_data[0] & 0x18);
        if( i_rating == 0x08 )
        {

            static const char *pppsz_ratings[8][2] = {
                { "None", "No rating (no content advisory)" },
                { "TV-Y", "All Children (no content advisory)" },
                { "TV-Y7", "Directed to Older Children (V = Fantasy Violence)" },
                { "TV-G", "General Audience (no content advisory)" },
                { "TV-PG", "Parental Guidance Suggested" },
                { "TV-14", "Parents Strongly Cautioned" },
                { "TV-MA", "Mature Audience Only" },
                { "None", "No rating (no content advisory)" }
            };
            p_prg->rating = XDS_META_PROGRAM_RATING_TPG;
            if( XdsChangeString( h, &p_prg->psz_rating, pppsz_ratings[pk->p_data[1]&0x07][0] ) )
            {



            }
        }
        else if( i_rating == 0x00 || i_rating == 0x10 )
        {

            static const char *pppsz_ratings[8][2] = {
                { "N/A", "N/A" },
                { "G", "General Audiences" },
                { "PG", "Parental Guidance Suggested" },
                { "PG-13", "Parents Strongly Cautioned" },
                { "R", "Restricted" },
                { "NC-17", "No one 17 and under admitted" },
                { "X", "No one under 17 admitted" },
                { "NR", "Not Rated" },
            };
            p_prg->rating = XDS_META_PROGRAM_RATING_MPAA;
            if( XdsChangeString( h, &p_prg->psz_rating, pppsz_ratings[pk->p_data[0]&0x07][0] ) )
            {



            }
        }
        else
        {

            assert( i_rating == 0x18 );
            p_prg->rating = XDS_META_PROGRAM_RATING_NONE;
            if( XdsChangeString( h, &p_prg->psz_rating, ((void*)0) ) )
            {


            }
        }
        break;

    default:



        break;
    }
}
