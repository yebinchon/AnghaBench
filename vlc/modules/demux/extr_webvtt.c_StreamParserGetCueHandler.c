
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int webvtt_cue_t ;


 int VLC_UNUSED (void*) ;
 int * malloc (int) ;

__attribute__((used)) static webvtt_cue_t * StreamParserGetCueHandler( void *priv )
{
    VLC_UNUSED(priv);
    return malloc( sizeof(webvtt_cue_t) );
}
