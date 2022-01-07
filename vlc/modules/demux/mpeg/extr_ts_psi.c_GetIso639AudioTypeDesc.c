
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t ARRAY_SIZE (char const**) ;



 char* strdup (char const*) ;

__attribute__((used)) static char *GetIso639AudioTypeDesc( uint8_t type )
{
    static const char *audio_type[] = {

        129,
        130,
        128,
    };

    if ( type == 0 || type >= ARRAY_SIZE(audio_type) )
        return ((void*)0);

    return strdup( audio_type[ --type ] );
}
