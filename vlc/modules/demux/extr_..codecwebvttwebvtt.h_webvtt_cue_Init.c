
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int webvtt_cue_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void webvtt_cue_Init( webvtt_cue_t *c )
{
    memset( c, 0, sizeof(*c) );
}
