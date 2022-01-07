
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int* hashed_data; int* unhashed_data; } ;
struct TYPE_7__ {TYPE_1__ v4; } ;
struct TYPE_9__ {int version; TYPE_2__ specific; int issuer_longid; } ;
struct TYPE_8__ {int* psz_username; TYPE_4__ sig; int key; } ;
typedef TYPE_3__ public_key_t ;


 int PUBLIC_KEY_FOUND ;

 int SIGNATURE_FOUND ;

 int USER_ID_FOUND ;

 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int free (int*) ;
 scalar_t__ malloc (int) ;
 int memcmp (int ,int const*,int) ;
 int memcpy (int*,int const*,int) ;
 int packet_header_len (int ) ;
 int packet_type (int const) ;
 int parse_public_key_packet (int *,int const*,int) ;
 int parse_signature_packet (TYPE_4__*,int const*,int) ;
 int pgp_unarmor (char*,size_t,int*,size_t) ;
 int scalar_number (int const*,int) ;

int parse_public_key( const uint8_t *p_key_data, size_t i_key_len,
                      public_key_t *p_key, const uint8_t *p_sig_issuer )
{
    const uint8_t *pos = p_key_data;
    const uint8_t *max_pos = pos + i_key_len;

    int i_status = 0;




    uint8_t *p_key_unarmored = ((void*)0);

    p_key->psz_username = ((void*)0);
    p_key->sig.specific.v4.hashed_data = ((void*)0);
    p_key->sig.specific.v4.unhashed_data = ((void*)0);

    if( !( *pos & 0x80 ) )
    {
        p_key_unarmored = (uint8_t*)malloc( i_key_len );
        if( !p_key_unarmored )
            return VLC_ENOMEM;
        int i_len = pgp_unarmor( (char*)p_key_data, i_key_len,
                                 p_key_unarmored, i_key_len );

        if( i_len == 0 )
            goto error;

        pos = p_key_unarmored;
        max_pos = pos + i_len;
    }

    while( pos < max_pos )
    {
        if( !(*pos & 0x80) || *pos & 0x40 )
            goto error;

        int i_type = packet_type( *pos );

        int i_header_len = packet_header_len( *pos++ );
        if( pos + i_header_len > max_pos ||
            ( i_header_len != 1 && i_header_len != 2 && i_header_len != 4 ) )
            goto error;

        int i_packet_len = scalar_number( pos, i_header_len );
        pos += i_header_len;

        if( pos + i_packet_len > max_pos )
            goto error;

        switch( i_type )
        {
            case 130:
                i_status |= 0x01;
                if( parse_public_key_packet( &p_key->key, pos, i_packet_len ) != VLC_SUCCESS )
                    goto error;
                break;

            case 129:
                if( i_status & 0X04 || !p_sig_issuer )
                    break;
                int i_ret = parse_signature_packet( &p_key->sig, pos,
                                                    i_packet_len );
                if( i_ret == VLC_SUCCESS )
                {
                    if( p_key->sig.version != 4 )
                        break;
                    if( memcmp( p_key->sig.issuer_longid, p_sig_issuer, 8 ) )
                    {
                        free( p_key->sig.specific.v4.hashed_data );
                        free( p_key->sig.specific.v4.unhashed_data );
                        p_key->sig.specific.v4.hashed_data = ((void*)0);
                        p_key->sig.specific.v4.unhashed_data = ((void*)0);
                        break;
                    }
                    i_status |= 0X04;
                }
                break;

            case 128:
                if( p_key->psz_username )
                    break;
                i_status |= 0x02;
                p_key->psz_username = (uint8_t*)malloc( i_packet_len + 1);
                if( !p_key->psz_username )
                    goto error;

                memcpy( p_key->psz_username, pos, i_packet_len );
                p_key->psz_username[i_packet_len] = '\0';
                break;

            default:
                break;
        }
        pos += i_packet_len;
    }
    free( p_key_unarmored );

    if( !( i_status & ( 0x01 | 0x02 ) ) )
        return VLC_EGENERIC;

    if( p_sig_issuer && !( i_status & 0X04 ) )
        return VLC_EGENERIC;

    return VLC_SUCCESS;

error:
    if( p_key->sig.version == 4 )
    {
        free( p_key->sig.specific.v4.hashed_data );
        free( p_key->sig.specific.v4.unhashed_data );
    }
    free( p_key->psz_username );
    free( p_key_unarmored );
    return VLC_EGENERIC;
}
