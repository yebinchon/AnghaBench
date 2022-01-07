
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int od_descriptors_t ;


 unsigned int ODDescriptorLength (unsigned int*,int const**) ;
 int ODGetBytes (unsigned int*,int const**,int) ;


 int ObjectDescrRemoveCommandRead (int *,int *,unsigned int const,int const*) ;
 int ObjectDescrUpdateCommandRead (int *,int *,unsigned int const,int const*) ;
 int od_debug (int *,char*,int const,unsigned int const) ;

void DecodeODCommand( vlc_object_t *p_object, od_descriptors_t *p_ods,
                      unsigned i_data, const uint8_t *p_data )
{
    while( i_data )
    {
        const uint8_t i_tag = ODGetBytes( &i_data, &p_data, 1 );
        const unsigned i_length = ODDescriptorLength( &i_data, &p_data );
        if( !i_length || i_length > i_data )
            break;
        od_debug( p_object, "Decode tag 0x%x length %d", i_tag, i_length );
        switch( i_tag )
        {
            case 128:
                ObjectDescrUpdateCommandRead( p_object, p_ods, i_length, p_data );
                break;
            case 129:
                ObjectDescrRemoveCommandRead( p_object, p_ods, i_length, p_data );
                break;
            default:
                break;
        }
        p_data += i_length;
        i_data -= i_length;
    }
}
