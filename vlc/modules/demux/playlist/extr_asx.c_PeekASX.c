
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ stream_t ;


 int strncasecmp (char const*,char*,int) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static bool PeekASX( stream_t *s )
{
    const uint8_t *p_peek;
    return ( vlc_stream_Peek( s->s, &p_peek, 12 ) == 12
             && !strncasecmp( (const char*) p_peek, "<asx version", 12 ) );
}
